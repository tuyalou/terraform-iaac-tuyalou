terraform { 
backend "s3" { 
bucket = "tuba-terraform-eks" 
key = "application/us-east-1/state/dev/infrastructure.tfstate_london.jason" 
region = "us-east-1" 
  } 
} 
