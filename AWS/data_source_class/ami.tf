provider "aws" {
  region  = "us-east-1"
  version = "2.59"
}
data "aws_ami" "centos" {
  most_recent = true
  owners      = ["679593333241"]
  filter {
    name   = "state"
    values = ["available"]
  }
  filter {
    name   = "name"
    values = ["CentOS Linux 7 x86_64 HVM EBS *"]
  }
}
resource "aws_key_pair" "us-east-1-key" {
  key_name   = "farrukhs_bastion"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}
resource "aws_instance" "centos" {
  ami           = "${data.aws_ami.centos.id}"
  instance_type = "t2.micro"
  key_name      =   "${aws_key_pair.us-east-1-key.key_name}"
  provisioner "remote-exec" {
    connection {
        type            = "ssh"
        user            = "centos"
        private_key     = "${file("~/.ssh/id_rsa")}"
        host            = "${self.public_ip}"
    }
    inline = [
      "sudo yum install httpd -y",
      "sudo systemctl start httpd",
    ]
  }
}
output "centos" {
  value = "${data.aws_ami.centos.id}"
}

resource "aws_instance" "centos2" {
  ami           =   "${data.aws_ami.centos.id}"
  instance_type =   "t2.micro"
  key_name      =   "${aws_key_pair.us-east-1-key.key_name}"
    # Bootstrapping block
    #
  provisioner "remote-exec" {
    connection {
        type            = "ssh"
        user            = "centos"
        private_key     = "${file("~/.ssh/id_rsa")}"
        host            = "${self.public_ip}"
    }
    inline = [
      "sudo yum install -y epel-release",
      "sudo yum install telnet -y",
      "sudo yum install -y yum-utils device-mapper-persistent-data lvm2 ansible git python-devel python-pip python-docker-py vim-enhanced ",
      "sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo",
      "sudo yum install  docker-ce -y",
      "sudo systemctl start docker",
      "sudo systemctl enable docker",
      "sudo pip uninstall docker docker-py docker-compose",
      "sudo pip install docker-compose==1.9",
      "sudo ansible-playbook -i /tmp/awx/installer/inventory /tmp/awx/installer/install.yml -vv",
    ]
  }
  provisioner "file" {
    connection {
        type            = "ssh"
        user            = "centos"
        private_key     = "${file("~/.ssh/id_rsa")}"
        host            = "${self.public_ip}"
    }
    source      = "r1soft.repo"
    destination = "/etc/yum.repos/d"
  }
}