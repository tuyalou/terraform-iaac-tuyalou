environment = "dev"
region = "us-east-1"
s3_bucket = "tuba-terraform-eks"              #Will be used to set backend.tf
s3_folder_project = "application"            #Will be used to set backend.tf
s3_folder_region = "us-east-1"               #Will be used to set backend.tf
s3_folder_type = "state"                     #Will be used to set backend.tf
s3_tfstate_file = "infrastructure.tfstate_virginia.jason"   #Will be used to set backend.tf

vpc_id = "vpc-078071bf799b760f9"
subnet1 = "subnet-0029962a9698c70f8"
subnet2 = "subnet-021ad6bebf8ea374e"
subnet3 = "subnet-02d0d68d25e1322e9"
cluster_name = "my-cluster-virginia"
instance_type = "t2.micro"
asg_max_size = "48" 
asg_min_size = "3"
asg_desired_capacity = "3"
cluster_version = "1.14"