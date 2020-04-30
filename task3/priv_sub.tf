# # Private subnets
# ########################################################################################################################
# resource "aws_subnet" "private1" {
#     vpc_id     = "${aws_vpc.main.id}"
#     cidr_block = "${var.private1_cidr}"
# }
# resource "aws_subnet" "private2" {
#     vpc_id     = "${aws_vpc.main.id}"
#     cidr_block = "${var.private2_cidr}"
# }
# resource "aws_subnet" "private3" {
#     vpc_id     = "${aws_vpc.main.id}"
#     cidr_block = "${var.private3_cidr}"
# }