resource "aws_instance" "web" {
  ami               = "${var.image_id}"
  instance_type     = "${var.instance_type}"
  key_name          =  "${aws_key_pair.us-east-1-key.key_name}"
  security_groups   = ["${aws_security_group.allow_tls.name}"]
  
  tags = {
    Name = "HelloWorld"
  }
}

