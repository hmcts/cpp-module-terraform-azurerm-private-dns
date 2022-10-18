<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.2.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | =3.19.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_local"></a> [local](#provider\_local) | 2.2.3 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_azure_private_dns_terratest"></a> [azure\_private\_dns\_terratest](#module\_azure\_private\_dns\_terratest) | ../ | n/a |

## Resources

| Name | Type |
|------|------|
| [local_file.dev-dns-configuration](https://registry.terraform.io/providers/hashicorp/local/latest/docs/data-sources/file) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_a_recordsets"></a> [a\_recordsets](#input\_a\_recordsets) | n/a | <pre>list(object({<br>    name   = string<br>    ttl    = number<br>    record = list(string)<br>  }))</pre> | `[]` | no |
| <a name="input_application"></a> [application](#input\_application) | Application to which the s3 bucket relates | `string` | `""` | no |
| <a name="input_attribute"></a> [attribute](#input\_attribute) | An attribute of the s3 bucket that makes it unique | `string` | `""` | no |
| <a name="input_cname_records"></a> [cname\_records](#input\_cname\_records) | n/a | <pre>list(object({<br>    name   = string<br>    ttl    = number<br>    record = string<br>  }))</pre> | `[]` | no |
| <a name="input_costcode"></a> [costcode](#input\_costcode) | Name of theDWP PRJ number (obtained from the project portfolio in TechNow) | `string` | `""` | no |
| <a name="input_create_zone"></a> [create\_zone](#input\_create\_zone) | n/a | `bool` | `true` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment into which resource is deployed | `string` | `""` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Namespace, which could be an organization name or abbreviation, e.g. 'eg' or 'cp' | `string` | `""` | no |
| <a name="input_owner"></a> [owner](#input\_owner) | Name of the project or sqaud within the PDU which manages the resource. May be a persons name or email also | `string` | `""` | no |
| <a name="input_region"></a> [region](#input\_region) | n/a | `string` | `"uksouth"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Name of the resource group that contains the DNS zones. | `string` | n/a | yes |
| <a name="input_type"></a> [type](#input\_type) | Name of service type | `string` | `""` | no |
| <a name="input_version_number"></a> [version\_number](#input\_version\_number) | The version of the application or object being deployed. This could be a build object or other artefact which is appended by a CI/Cd platform as part of a process of standing up an environment | `string` | `""` | no |
| <a name="input_vnet_links"></a> [vnet\_links](#input\_vnet\_links) | n/a | `list(any)` | `[]` | no |
| <a name="input_zone_name"></a> [zone\_name](#input\_zone\_name) | DNS zone to manage | `any` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_azurerm_private_dns_a_record"></a> [azurerm\_private\_dns\_a\_record](#output\_azurerm\_private\_dns\_a\_record) | The name of the Resource Group |
| <a name="output_azurerm_private_dns_cname_record"></a> [azurerm\_private\_dns\_cname\_record](#output\_azurerm\_private\_dns\_cname\_record) | The name of the Resource Group |
| <a name="output_azurerm_private_dns_zone"></a> [azurerm\_private\_dns\_zone](#output\_azurerm\_private\_dns\_zone) | The name of the Resource Group |
<!-- END_TF_DOCS -->
