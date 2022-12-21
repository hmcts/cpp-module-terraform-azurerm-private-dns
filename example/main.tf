data "local_file" "dev-dns-configuration" {
  filename = "${path.cwd}/records.yml"
}

module "azure_private_dns_terratest" {
  source              = "../"
  resource_group_name = var.resource_group_name
  region              = var.region
  cname_records       = yamldecode(data.local_file.dev-dns-configuration.content).cname
  a_recordsets        = yamldecode(data.local_file.dev-dns-configuration.content).A
  zone_name           = yamldecode(data.local_file.dev-dns-configuration.content).name
  vnet_links          = yamldecode(data.local_file.dev-dns-configuration.content).vnet_links
  create_zone         = var.create_zone
  tags                = var.tags
}
