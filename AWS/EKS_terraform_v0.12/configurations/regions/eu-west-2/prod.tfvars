environment = "prod"
region = "eu-west-2"
s3_bucket = "tuba-terraform-eks"                              #Will be used to set backend.tf
s3_folder_project = "application"                             #Will be used to set backend.tf
s3_folder_region = "us-east-1"                                #Will be used to set backend.tf
s3_folder_type = "state"                                      #Will be used to set backend.tf
s3_tfstate_file = "infrastructure.tfstate_london.jason"       #Will be used to set backend.tf

vpc_id = "vpc-0fc840bb81dca6ea8"
subnet1 = "subnet-00bcbb7fdfec17773"
subnet2 = "subnet-0b4b71fdd6338c402"
subnet3 = "subnet-08a47152982b03821"
cluster_name = "my-cluster-london"
instance_type = "t2.micro"
asg_max_size = "48" 
asg_min_size = "3"
asg_desired_capacity = "3"
cluster_version = "1.14"