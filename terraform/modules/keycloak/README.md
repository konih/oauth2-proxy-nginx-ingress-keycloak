<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | 2.10.1 |
| <a name="requirement_random"></a> [random](#requirement\_random) | 3.5.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_helm"></a> [helm](#provider\_helm) | 2.10.1 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.5.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [helm_release.keycloak](https://registry.terraform.io/providers/hashicorp/helm/2.10.1/docs/resources/release) | resource |
| [random_password.postgresql_password](https://registry.terraform.io/providers/hashicorp/random/3.5.1/docs/resources/password) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_chart_name"></a> [chart\_name](#input\_chart\_name) | The name of the helm chart to use | `string` | `"keycloak"` | no |
| <a name="input_chart_version"></a> [chart\_version](#input\_chart\_version) | The version of the Helm chart to use | `string` | `"16.0.3"` | no |
| <a name="input_create_namespace"></a> [create\_namespace](#input\_create\_namespace) | Whether to create the namespace if it does not exist | `bool` | `true` | no |
| <a name="input_helm_repository"></a> [helm\_repository](#input\_helm\_repository) | The helm repository to use | `string` | `"https://charts.bitnami.com/bitnami"` | no |
| <a name="input_image_tag"></a> [image\_tag](#input\_image\_tag) | The image tag to use for the Keycloak image. Defaults to the chart version | `string` | `""` | no |
| <a name="input_ingress_class_name"></a> [ingress\_class\_name](#input\_ingress\_class\_name) | The name of the Ingress Class associated with this ingress | `string` | `""` | no |
| <a name="input_ingress_enabled"></a> [ingress\_enabled](#input\_ingress\_enabled) | Whether to create an ingress for Keycloak | `bool` | `false` | no |
| <a name="input_ingress_host"></a> [ingress\_host](#input\_ingress\_host) | The host to use for the ingress | `string` | `""` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | The kuberntes namespace to install keycloak in | `string` | `"keycloak"` | no |
| <a name="input_postgresql_enabled"></a> [postgresql\_enabled](#input\_postgresql\_enabled) | Whether to enable the PostgreSQL dependency | `bool` | `true` | no |
| <a name="input_postgresql_password"></a> [postgresql\_password](#input\_postgresql\_password) | The password to use for the PostgreSQL database. If not set, a random password will be generated | `string` | `null` | no |
| <a name="input_release_name"></a> [release\_name](#input\_release\_name) | The name of the helm release | `string` | `null` | no |
| <a name="input_replicas"></a> [replicas](#input\_replicas) | The number of replicas for the Keycloak deployment | `number` | `1` | no |
| <a name="input_resources"></a> [resources](#input\_resources) | The resources to allocate to the Keycloak container | `string` | `"    requests:\n     cpu: \"500m\"\n     memory: \"1024Mi\"\n   limits:\n     cpu: \"500m\"\n     memory: \"1024Mi\"\n"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_postgresql_password"></a> [postgresql\_password](#output\_postgresql\_password) | n/a |
<!-- END_TF_DOCS -->