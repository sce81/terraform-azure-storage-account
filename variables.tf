variable "name" {}
variable "resource_group" {}
variable "account_tier" { default = "Standard" }
variable "replication_type" { default = "LRS" }
variable "environment" {}
variable "sku" { default = "Standard_F2"}
variable "instance_count" {default = 1}
variable "adminuser" {default = "admin"}
variable "zone_balance" {default = true}
variable "instance_repair" {default = true}

variable "extra_tags" {
  type    = map(any)
  default = {}
}



