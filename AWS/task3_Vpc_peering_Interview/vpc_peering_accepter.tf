###################   ACCEPTER SIDE   ######################

# resource "aws_vpc_peering_connection_accepter" "peer" {
#   provider                  = "aws.peer"
#   vpc_peering_connection_id = "vpc-0bfeb2efaf8eeb23e"
#   auto_accept               = true
#   tags = {
#     Side = "Accepter"
#   }
# }
# resource aws_route "local_public_1" {
#   route_table_id            = "${aws_route_table.r.id}"
#   destination_cidr_block    = "${var.peer_vpc_cidr}"
#   vpc_peering_connection_id = "${aws_vpc_peering_connection.peer.id}"
#   vpc_peering_connection_id = "pcx-0b613720240aeac48" ??? figure , if i can accept interpolation
# }

# resource aws_route "local_private_1" {
#   route_table_id            = "${aws_route_table.n.id}"
#   destination_cidr_block    = "${var.peer_vpc_cidr}"
#   vpc_peering_connection_id = "${aws_vpc_peering_connection.peer.id}"
#   vpc_peering_connection_id = "pcx-0b613720240aeac48" ??? figure , if i can accept interpolation