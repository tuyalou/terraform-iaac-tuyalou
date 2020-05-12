terraform { 
backend "s3" { 
bucket = "tuba-terraform-eks" 
key = "application/us-east-1/state/dev/infrastructure.tfstate.jason" 
region = "us-east-1" 
  } 
} 
