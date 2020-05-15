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

output "Instance_Public_Ip" {
  value = "${aws_instance.wordpress.public_ip}"
}
output "Key_Name" {
    value = "${aws_instance.wordpress.key_name}"
}

output "aws_nat_gateway" {
    value = "${aws_nat_gateway.gw.id}"
}
output "aws_internet_gateway" {
    value = "${aws_internet_gateway.gw.id}"
}
output "elastic_ip" {
    value = "${aws_eip.nat.id}"
}
output "User_Name" {
    value = "${aws_iam_user.Tubes.name}"
}
output "VPC_ARN" {
    value = "${aws_vpc.main.arn}"
}
