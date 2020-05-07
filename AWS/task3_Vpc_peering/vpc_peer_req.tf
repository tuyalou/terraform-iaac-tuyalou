resource "aws_vpc_peering_connection" "peer" {
  vpc_id        = "${aws_vpc.main.id}"
  peer_vpc_id   = "vpc-0be8cedff5d2f3504"
#   peer_vpc_id   = "${var.peer_vpc_id}"  
  peer_owner_id = "076443918458"
#   peer_owner_id = "${var.peer_vpc_owner}"
  peer_region   = "us-east-2"
  tags = {
    Side = "Requester"
  }
}
resource aws_route "local_public_1" {
  route_table_id            = "${aws_route_table.r.id}"
  destination_cidr_block    = "${var.peer_vpc_cidr}"
  vpc_peering_connection_id = "${aws_vpc_peering_connection.peer.id}"
}

resource aws_route "local_private_1" {
  route_table_id            = "${aws_route_table.n.id}"
  destination_cidr_block    = "${var.peer_vpc_cidr}"
  vpc_peering_connection_id = "${aws_vpc_peering_connection.peer.id}"
}

###################   ACCEPTER SIDE   ######################

# resource "aws_vpc_peering_connection_accepter" "peer" {
#   provider                  = "aws.peer"
#   vpc_peering_connection_id = "pcx-0b613720240aeac48"
#   auto_accept               = true
#   tags = {
#     Side = "Accepter"
#   }
# }
# resource aws_route "local_public_1" {
#   route_table_id            = "${aws_route_table.r.id}"
#   destination_cidr_block    = "${var.peer_vpc_cidr}"
#   vpc_peering_connection_id = "pcx-0b613720240aeac48"
# }

# resource aws_route "local_private_1" {
#   route_table_id            = "${aws_route_table.n.id}"
#   destination_cidr_block    = "${var.peer_vpc_cidr}"
#   vpc_peering_connection_id = "pcx-0b613720240aeac48"
# }