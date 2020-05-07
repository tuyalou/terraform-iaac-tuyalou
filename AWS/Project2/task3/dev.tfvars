region          =      "us-east-1"
region_name     =      "virginia"
vpc_cidr        =      "192.168.0.0/16"
public1_cidr    =      "192.168.1.0/24"
public2_cidr    =      "192.168.2.0/24"
public3_cidr    =      "192.168.3.0/24"
private1_cidr   =      "192.168.11.0/24"
private2_cidr   =      "192.168.12.0/24"
private3_cidr   =      "192.168.13.0/24"

route_table_cidr =      "0.0.0.0/0"

peer_vpc_cidr    =      "10.0.0.0/16"

az1             =       "a"
az2             =       "b"
az3             =       "c"

tags            = {
    Name        = "Project_2"
    Department  = "IT"
    Team        = "Team_2" 
    Environment = "Dev"
    Created_by  = "Tuba Loughlin"
  }
