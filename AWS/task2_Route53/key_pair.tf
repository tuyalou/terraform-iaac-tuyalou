resource "aws_key_pair" "us-east-1-key" {
  key_name   = "route53"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}