region          =      "us-east-1"
region_name     =      "virginia"
ami             =      "ami-0323c3dd2da7fb37d"
vpc_cidr        =      "10.0.0.0/16"
public1_cidr    =      "10.0.1.0/24"
public2_cidr    =      "10.0.2.0/24"
public3_cidr    =      "10.0.3.0/24"
private1_cidr   =      "10.0.101.0/24"
private2_cidr   =      "10.0.102.0/24"
private3_cidr   =      "10.0.103.0/24"

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