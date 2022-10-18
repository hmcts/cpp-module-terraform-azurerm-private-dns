output "a_record" {
  description = "The name of the Resource Group"
  value       = { for record in var.a_recordsets : record.name => record }
}

output "cname_record" {
  description = "The name of the Resource Group"
  value       = { for record in var.cname_records : record.name => record }
}

output "private_dns_zone" {
  description = "The name of the Resource Group"
  value       = azurerm_private_dns_zone.zone.0.name
}
