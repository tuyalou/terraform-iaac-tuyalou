# resource "aws_vpc_peering_connection_accepter" "peer" {
#   provider                  = "aws.peer"
#   vpc_peering_connection_id = "vpc-0bfeb2efaf8eeb23e"
#   auto_accept               = true
#   tags = {
#     Side = "Accepter"
#   }
# }