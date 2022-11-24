output "a_record" {
  description = "The name of the Resource Group"
  value       = azurerm_private_dns_a_record.this
}

output "cname_record" {
  description = "The name of the Resource Group"
  value       = azurerm_private_dns_cname_record.this
}
