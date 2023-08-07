########################################################################################################################
# Helm Chart and Helm Release
########################################################################################################################

variable "create_namespace" {
  default     = true
  description = "Whether to create the namespace if it does not exist"
  type        = bool
}

variable "namespace" {
  default     = "keycloak"
  description = "The kuberntes namespace to install keycloak in"
}


variable "release_name" {
  default     = null
  description = "The name of the helm release"
  type        = string
}

variable "helm_repository" {
  default     = "https://charts.bitnami.com/bitnami"
  description = "The helm repository to use"
  type        = string
}

variable "chart_name" {
  default     = "keycloak"
  description = "The name of the helm chart to use"
  type        = string
}

variable "chart_version" {
  default     = "16.0.3"
  description = "The version of the Helm chart to use"
  type        = string
}

########################################################################################################################
# Keycloak Configuration
########################################################################################################################

variable "image_tag" {
  default     = ""
  description = "The image tag to use for the Keycloak image. Defaults to the chart version"
  type        = string
}

variable "ingress_enabled" {
  default     = false
  type        = bool
  description = "Whether to create an ingress for Keycloak"
}

variable "ingress_class_name" {
  default     = ""
  type        = string
  description = "The name of the Ingress Class associated with this ingress"
}

variable "ingress_host" {
  default     = ""
  type        = string
  description = "The host to use for the ingress"
}

variable "replicas" {
  default     = 1
  description = "The number of replicas for the Keycloak deployment"
  type        = number

}
variable "postgresql_enabled" {
  default     = true
  description = "Whether to enable the PostgreSQL dependency"
  type        = bool
}

variable "postgresql_password" {
  default     = null
  description = "The password to use for the PostgreSQL database. If not set, a random password will be generated"
  type        = string
}
