output "instance_id" {
   value       = "${aws_instance.web.id}"
}

output "instance_arn" {
  value = "${aws_instance.web.arn}"
}
output "instance_ip" {
  value = "${aws_instance.web.public_ip}"
}
output "instance_dn" {
  value = "${aws_instance.web.public_dns}"
}
output "instance_az" {
  value = "${aws_instance.web.availability_zone}"
}


# output "name" {
#   value       = "tuba"
# }

# output "lastname" {
#   value       = "loughlin"
# }


# resource "aws_key_pair" "us-east-1-key2" {
#   key_name   = "bastion2"
#   public_key = "${file("~/.ssh/id_rsa.pub")}"
# }


# output "key_name" {
#   value       = "${aws_key_pair.us-east-1-key2.key_name}"
# }


# output "actual_key" {
#   value       = "${aws_key_pair.us-east-1-key2.public_key}"
# }

# output "actual_key_id" {
#   value       = "${aws_key_pair.us-east-1-key2.id}"
# }