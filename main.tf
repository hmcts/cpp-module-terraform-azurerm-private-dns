resource "azurerm_private_dns_a_record" "this" {
  for_each = { for record in var.a_recordsets : record.name => record }

  name                = lower(each.value.name)
  zone_name           = local.zone
  resource_group_name = var.resource_group_name
  ttl                 = each.value.ttl
  records             = each.value.record
}

resource "azurerm_private_dns_cname_record" "this" {
  for_each = { for record in var.cname_records : record.name => record }

  name                = lower(each.value.name)
  zone_name           = local.zone
  resource_group_name = var.resource_group_name
  ttl                 = each.value.ttl
  record              = lower(each.value.record)
}

resource "azurerm_private_dns_zone" "zone" {
  count               = var.create_zone == true ? 1 : 0
  name                = var.zone_name
  resource_group_name = var.resource_group_name
  tags                = var.tags
}

locals {
  zone = var.create_zone == true ? azurerm_private_dns_zone.zone[0].name : var.zone_name
}

resource "azurerm_private_dns_zone_virtual_network_link" "vnet_link" {
  for_each = { for record in var.vnet_links : record.link_name => record }

  name                  = each.value.link_name
  resource_group_name   = var.resource_group_name
  private_dns_zone_name = local.zone
  virtual_network_id    = each.value.vnet_id
  registration_enabled  = contains(keys(each.value), "registration_enabled") ? each.value.registration_enabled : false
  tags                  = var.tags
}
