############
# DEFAULTS #
############

variable "region" {
  type    = string
  default = "uksouth"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group that contains the DNS zones."
}

################
# PRIVATE DNS  #
################

variable "zone_name" {
  description = "DNS zone to manage"
  default     = null
}

variable "vnet_links" {
  type    = list(any)
  default = []
}

variable "cname_records" {
  type = list(object({
    name   = string
    ttl    = number
    record = string
  }))

  default = []
}

variable "a_recordsets" {
  type = list(object({
    name   = string
    ttl    = number
    record = list(string)
  }))

  default = []
}

variable "create_zone" {
  default = true
}

############
# TAGGING  #
############

variable "tags" {
  type        = map(string)
  default     = {}
  description = "tags"
}
