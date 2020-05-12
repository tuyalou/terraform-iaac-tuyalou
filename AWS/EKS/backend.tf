terraform { 
backend "s3" { 
bucket = "tuba-terraform-eks" 
key = "application/us-east-1/state/stage/infrastructure.tfstate_oregon.jason" 
region = "us-east-1" 
  } 
} 
