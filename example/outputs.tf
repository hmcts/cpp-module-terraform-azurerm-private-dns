output "a_record" {
  description = "The A records of the private dns zone"
  value       = module.azure_private_dns_terratest.a_record
}

output "cname_record" {
  description = "The CNAME records of the private dns zone"
  value       = module.azure_private_dns_terratest.cname_record
}
