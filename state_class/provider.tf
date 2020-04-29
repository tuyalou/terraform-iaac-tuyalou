provider "aws" {
  region = "us-east-1"
  version = "2.59"
}


terraform {
  required_version = "0.11.14"
}


resource "aws_key_pair" "us-east-1-key" {
  key_name   = "bastion_in_london"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}