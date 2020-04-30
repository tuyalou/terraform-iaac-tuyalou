# # Public Subnet
# ########################################################################################################################
# resource "aws_subnet" "public1" {
#     vpc_id     = "${aws_vpc.main.id}"
#     cidr_block = "${var.public1_cidr}"
#       tags = {
#          Name = "public subnet 1"
#          Environment = "Development"
#   }
# }
# resource "aws_subnet" "public2" {
#     vpc_id     = "${aws_vpc.main.id}"
#     cidr_block = "${var.public2_cidr}"
#       tags = {
#     Name = "public subnet 2"
#     Environment = "Development"
#   }
# }
# resource "aws_subnet" "public3" {
#     vpc_id     = "${aws_vpc.main.id}"
#     cidr_block = "${var.public3_cidr}"
#     tags = {
#       Name = "public subnet 3"
#       Environment = "Development"
#   }
# }