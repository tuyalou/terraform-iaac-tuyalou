resource "aws_key_pair" "us-east-1-key" {
  key_name   = "bastion_london"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}

