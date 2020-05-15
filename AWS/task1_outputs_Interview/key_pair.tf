resource "aws_key_pair" "us-east-1-key" {
  key_name   = "not-every-key-name-has-to-be-bastion"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}