# # Private subnets
# ########################################################################################################################
# resource "aws_subnet" "private1" {
#     vpc_id     = "${aws_vpc.main.id}"
#     cidr_block = "${var.private1_cidr}"
#     tags = {
#       Name = "private subnet1 "
#       Environment = "Development"
#   }
# }
# resource "aws_subnet" "private2" {
#     vpc_id     = "${aws_vpc.main.id}"
#     cidr_block = "${var.private2_cidr}"
#     tags = {
#       Name = "private subnet 2"
#       Environment = "Development"
#   }
# }
# resource "aws_subnet" "private3" {
#     vpc_id     = "${aws_vpc.main.id}"
#     cidr_block = "${var.private3_cidr}"
#     tags = {
#       Name = "pravite subnet 3"
#       Environment = "Development"
#   }
# }