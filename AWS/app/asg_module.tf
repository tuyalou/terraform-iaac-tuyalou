module "ASG_TASK" { 
    source = "./module" 
    region = "us-east-1" 
    image_owner = "137112412989" 
    desired_capacity = 1 
    max_size = 1 
    min_size = 1 
} 

terraform { 
  required_version = "0.11.14"
  backend "s3" { 
  bucket = "tuba-task" 
  key = "path/to/my/key" 
  region = "us-east-1" 
} 
} 
