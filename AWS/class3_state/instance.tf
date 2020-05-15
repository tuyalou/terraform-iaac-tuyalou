resource "aws_instance" "wordpress" {
  ami           = "${var.ami}"
  instance_type = "${var.instance_type}"
}