output "vpc" {
    value = "${aws_vpc.main.id}"
}

output "public_subnet" {
    value = [
       "${aws_subnet.public1.id}    ${aws_subnet.public1.cidr_block}    ${aws_subnet.public1.availability_zone}",
       "${aws_subnet.public2.id}    ${aws_subnet.public2.cidr_block}    ${aws_subnet.public2.availability_zone}",
       "${aws_subnet.public3.id}    ${aws_subnet.public3.cidr_block}    ${aws_subnet.public3.availability_zone}"
    ]
    
}

output  "private_subnet" {
    value = [
       "${aws_subnet.private1.id}    ${aws_subnet.private1.cidr_block}    ${aws_subnet.private1.availability_zone}",
       "${aws_subnet.private2.id}    ${aws_subnet.private2.cidr_block}    ${aws_subnet.private2.availability_zone}",
       "${aws_subnet.private3.id}    ${aws_subnet.private3.cidr_block}    ${aws_subnet.private3.availability_zone}"
    ]
}

output "aws_nat_gateway" {
    value = "${aws_nat_gateway.gw.id}"
}

output "aws_internet_gateway" {
    value = "${aws_internet_gateway.gw.id}"
}

output "region" {
    value = "${var.region}      ${var.region_name}"
}

output "Tags" {
    value = "${var.tags}"
}
output "nagios_ip" {
  value = "${aws_instance.nagios_server.public_ip}"
}
output "nagios_username" {
  value = "${aws_instance.nagios_server.key_name}"
}
output "centos" {
  value = "${data.aws_ami.centos.id}"
}

output "elastic_ip" {
    value = "${aws_eip.nat.id}"
}

output "nagios_key" {
  value = "${aws_key_pair.us-east-1-key.key_name}"
}
output "message" {
  value = "NagiosXI Server Installation"
}
# output "nagios_user" {
#     value = "${null_resource.nagios_user.user}"
# }
