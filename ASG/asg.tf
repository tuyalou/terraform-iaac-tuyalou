module "asg" {
  source  = "tuyalou/asg/aws"
  region = "${var.region}"    
  image_owner = "137112412989"
  desired_capacity = 1
  max_size = 1
  min_size = 1
}