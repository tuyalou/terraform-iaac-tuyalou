region          =      "us-east-2"
region_name     =      "ohio"
ami             =      "ami-07ea389d604b141bb"
vpc_cidr        =      "192.168.0.0/16"
public1_cidr    =      "192.168.1.0/24"
public2_cidr    =      "192.168.2.0/24"
public3_cidr    =      "192.168.3.0/24"
private1_cidr   =      "192.168.11.0/24"
private2_cidr   =      "192.168.12.0/24"
private3_cidr   =      "192.168.13.0/24"

route_table_cidr =      "0.0.0.0/0"

az1             =       "a"
az2             =       "b"
az3             =       "c"
tags            = {
    Name        = "VPC_Task"
    Department  = "IT"
    Team        = "Infrastructure" 
    Environment = "Dev"
    Created_by  = "Tuba Loughlin"
  }