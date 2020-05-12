environment = "stage"
region = "us-west-2"
s3_bucket = "tuba-terraform-eks"              #Will be used to set backend.tf
s3_folder_project = "application"            #Will be used to set backend.tf
s3_folder_region = "us-west-2"               #Will be used to set backend.tf
s3_folder_type = "state"                     #Will be used to set backend.tf
s3_tfstate_file = "infrastructure.tfstate_oregon.jason"   #Will be used to set backend.tf

vpc_id = "vpc-09b55e934ed1d266b"
subnet1 = "subnet-003bc93bf0a9d37b8"
subnet2 = "subnet-088d4429ffd4b68f7"
subnet3 = "subnet-0402bdb8a3eb140bc"
cluster_name = "my-cluster-oregon"
instance_type = "t2.micro"
asg_max_size = "48" 
asg_min_size = "3"
asg_desired_capacity = "3"
cluster_version = "1.14"