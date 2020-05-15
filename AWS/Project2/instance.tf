data "aws_ami" "centos" {
  most_recent = true
  owners      = ["${var.image_owner}"]
  filter {
    name   = "state"
    values = ["available"]
  }
  filter {
    name   = "name"
    values = ["CentOS Linux 7 x86_64 HVM EBS *"]
  }
}

resource "aws_instance" "nagios_server" {
  ami                             = "${data.aws_ami.centos.id}"
  instance_type                   = "${var.instance_type}"
  associate_public_ip_address     = true
  key_name                        =  "${aws_key_pair.us-east-1-key.key_name}"
  vpc_security_group_ids          = ["${aws_security_group.nagios.id}"]
  subnet_id                       = "${aws_subnet.public1.id}"
  source_dest_check               = false
  availability_zone               = "${var.region}${var.az1}"
  tags                            = "${var.tags}"
  # provisioner "remote-exec" {
  #   connection {
  #       type            = "ssh"
  #       user            = "centos"
  #       private_key     = "${file("~/.ssh/id_rsa")}"
  #       host            = "${self.public_ip}"
  #   }
  #   inline = [
  #     "sudo yum install curl -y",
  #     "sudo curl https://assets.nagios.com/downloads/nagiosxi/install.sh | sudo sh",
  #   ]
  # }
}