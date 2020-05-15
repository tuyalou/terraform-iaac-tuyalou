#  ###### Find AMI for Ubuntu  #####

# data "aws_ami" "ubuntu" {
#   most_recent = true

#   owners = ["099720109477"]

#   filter {
#     name   = "name"
#     values = ["ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*"]
#   }

#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }
#  }


#  ###### Create instance  #####

#   resource "aws_instance" "ubuntu" {
#   ami           = "${data.aws_ami.ubuntu.id}"
#   instance_type = "t2.micro" 
# }


#  ###### Output of AMI ####

# output "ubuntu" { 
# value = "${data.aws_ami.ubuntu.id}" 
# } 