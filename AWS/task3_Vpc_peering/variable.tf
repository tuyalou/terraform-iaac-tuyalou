variable "vpc_cidr" {}
# variable "peer_vpc_cidr" {}       # will be used for vpc peering 

variable "public1_cidr" {}
variable "public2_cidr" {}
variable "public3_cidr" {}

variable "private1_cidr" {}
variable "private2_cidr" {}
variable "private3_cidr" {}

variable "route_table_cidr" {}

variable "az1" {}
variable "az2" {}
variable "az3" {}

variable "region" {}
variable "region_name" {}
variable "image_owner" {}

variable "tags" {
    type = "map"
}