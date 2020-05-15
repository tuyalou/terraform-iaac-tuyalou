terraform { 
backend "s3" { 
bucket = "tuba-terraform-bucket" 
key = "application/us-east-1/state/qa/task.tfstate_virginia.jason" 
region = "us-east-1" 
  } 
} 
