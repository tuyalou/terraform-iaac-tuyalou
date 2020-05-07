output "instance_id" {
  value = "${aws_instance.web.id}"
}

output "instance_key" {
  value = "${aws_key_pair.us-east-1-key.key_name}"
}

output "instance_ip" {
  value = "${aws_instance.web.public_ip}"
}
output "instance_arn" {
  value = "${aws_instance.web.arn}"
}
output "instance_dn" {
  value = "${aws_instance.web.public_dns}"
}
output "message" {
  value = "Login to wordpress and reset password"
}