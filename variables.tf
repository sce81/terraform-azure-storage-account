variable "name" {}
variable "resource_group" {}
variable "account_tier" { default = "Standard" }
variable "replication_type" { default = "LRS" }
variable "https_traffic_only_enabled" { default = true }
variable "min_tls_version" { default = "TLS1_2" }
variable "allow_nested_items_to_be_public" { default = false }
variable "public_network_access_enabled" { default = false }
variable "shared_access_key_enabled" { default = false }
variable "environment" {}
variable "sku" { default = "Standard_F2" }
variable "instance_count" { default = 1 }
variable "adminuser" { default = "admin" }
variable "zone_balance" { default = true }
variable "instance_repair" { default = true }

variable "extra_tags" {
  type    = map(any)
  default = {}
}


