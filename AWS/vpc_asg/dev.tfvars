region            =      "us-east-1"
region_name       =      "virginia"
image_owner       =      "137112412989"
desired_capacity  =       1 
max_size          =       1 
min_size          =       1 
vpc_cidr          =      "192.168.0.0/16"
public1_cidr      =      "192.168.1.0/24"
public2_cidr      =      "192.168.2.0/24"
public3_cidr      =      "192.168.3.0/24"
private1_cidr     =      "192.168.11.0/24"
private2_cidr     =      "192.168.12.0/24"
private3_cidr     =      "192.168.13.0/24"

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
