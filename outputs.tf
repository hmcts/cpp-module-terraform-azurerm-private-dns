output "a_record" {
  description = "The name of the Resource Group"
  value       = azurerm_private_dns_a_record.this
}

output "cname_record" {
  description = "The name of the Resource Group"
  value       = azurerm_private_dns_cname_record.this
}

output "private_dns_zone" {
  description = "The name of the Resource Group"
  value       = var.create_zone ? azurerm_private_dns_zone.zone.0.name : ""
}
