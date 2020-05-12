environment = "qa"
region = "us-east-2"
s3_bucket = "tuba-terraform-eks"              #Will be used to set backend.tf
s3_folder_project = "application"            #Will be used to set backend.tf
s3_folder_region = "us-east-2"               #Will be used to set backend.tf
s3_folder_type = "state"                     #Will be used to set backend.tf
s3_tfstate_file = "infrastructure.tfstate_ohio.jason"   #Will be used to set backend.tf

vpc_id = "vpc-064b1a62d38d628d5"
subnet1 = "subnet-0f073f5d909ebc451"
subnet2 = "subnet-0bf3e84387b936b63"
subnet3 = "subnet-0614e181e2eb97dbb"
cluster_name = "my-cluster-ohio"
instance_type = "t2.micro"
asg_max_size = "48" 
asg_min_size = "3"
asg_desired_capacity = "3"
cluster_version = "1.14"