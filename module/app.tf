module "app1" { 
   source = "./module" 
}

module "ohio" { 
  source = "./module" 
  region = "us-east-2" 
} 