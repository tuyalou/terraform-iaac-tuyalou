# resource "aws_nat_gateway" "gw" {
#   allocation_id = "${aws_eip.nat.id}"
#   subnet_id     = "${aws_subnet.public1.id}"
#   tags = {
#     Name = "nat gateway"
#     Team = "Infrastructure"
#   }
# }