provider "aws" {
  region = "us-east-1"
  version = "2.59"
}

// Create Key
resource "aws_key_pair" "us-east-1-key-output" {
  key_name   = "bastion"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}

// Create Instance 
resource "aws_instance" "web-output" {
  ami           = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.micro"
}

// Create Sec Group

// Create Route53

// Outputs Everything
output "aws_key_pair" {
    value = "${aws_key_pair.us-east-1-key-output.key_name}"
}

output "message" {
    value = "please, go and eat something"
}