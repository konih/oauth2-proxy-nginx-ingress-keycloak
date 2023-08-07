locals {
  release_name = var.release_name != null ? var.release_name : "keycloak"
}


resource "random_password" "postgresql_password" {
  length  = 32
  special = true
}

locals {
  postgresql_password = var.postgresql_password != null ? var.postgresql_password : random_password.postgresql_password.result
  helm_values         = <<EOF

replicas: ${var.replicas}

image:
  tag: ${var.image_tag}
  pullPolicy: Always

ingress:
  enabled: ${var.ingress_enabled}
  ingressClassName: "${var.ingress_class_name}"

  annotations:
    ## Resolve HTTP 502 error using ingress-nginx:
    ## See https://www.ibm.com/support/pages/502-error-ingress-keycloak-response
    nginx.ingress.kubernetes.io/proxy-buffer-size: 128k

  rules:
    - host: "${var.ingress_host}"

      paths:
        - path: /
          pathType: Prefix

  tls:
    - hosts:
        -  "${var.ingress_host}"
      secretName: ""

postgresql:
    enabled: ${var.postgresql_enabled}
    postgresqlUsername: keycloak
    postgresqlPassword: ${local.postgresql_password}
    postgresqlDatabase: keycloak

EOF
}

resource "helm_release" "keycloak" {
  chart            = "keycloak"
  namespace        = var.namespace
  name             = local.release_name
  repository       = var.helm_repository
  version          = "16.0.3"
  create_namespace = var.create_namespace
  values = [
    local.helm_values
  ]
}
