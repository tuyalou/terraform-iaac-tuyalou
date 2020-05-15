provider "aws" { 
  region = "${var.region}" 
  version = "2.59"
  # alias  = "peer"    # will be used for vpc peering
} 