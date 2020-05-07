resource "aws_instance" "web" {
  ami           = "${var.ami}"
  instance_type = "t2.micro"
  associate_public_ip_address = true
  key_name      =  "${aws_key_pair.us-east-1-key.key_name}"
  vpc_security_group_ids = ["${aws_security_group.web.id}"]
  subnet_id     = "${aws_subnet.public1.id}"
  source_dest_check = false
  availability_zone = "${var.region}${var.az1}"
  user_data       = "${file("httpd.sh")}"
  tags = "${var.tags}"
}

resource "aws_instance" "backup" {
  ami           = "${var.ami}"
  instance_type = "t2.micro"
  availability_zone = "${var.region}${var.az1}"
  key_name      =  "${aws_key_pair.us-east-1-key.key_name}"
  vpc_security_group_ids = ["${aws_security_group.backup_sec.id}"]
  subnet_id     = "${aws_subnet.private1.id}"
  associate_public_ip_address = false
  source_dest_check = false
  user_data       = "${file("mysql.sh")}"
  tags = "${var.tags}"
}