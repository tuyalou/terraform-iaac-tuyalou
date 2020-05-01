resource "aws_instance" "web" {
  ami           = "${var.ami}"
  instance_type = "t2.micro"
  subnet_id     = "${var.public1_cidr.id}"
  key_name      =  "${aws_key_pair.us-east-1-key.key_name}"
  security_groups = ["${aws_security_group.allow_tls.name}"]
  user_data       = "${file("user_data.sh")}"
  tags = "${var.tags}"
}

resource "aws_instance" "dbserver" {
  ami           = "${var.ami}"
  instance_type = "t2.micro"
  subnet_id     = "${var.private1_cidr.id}"
  key_name      =  "${aws_key_pair.us-east-1-key.key_name}"
  security_groups = ["${aws_security_group.allow_tls.name}"]
  user_data       = "${file("user_data2.sh")}"
  tags = "${var.tags}"
}