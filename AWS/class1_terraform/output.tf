output "Sec_Group" {
    value = "${aws_security_group.allow_tls.name}"
}

output "Key_Name" {
    value = "${aws_instance.web.key_name}"
}

output "Public_Ip" {
    value = "${aws_instance.web.public_ip}"
}

output "Instance_Type" {
    value = "${aws_instance.web.instance_type}"
}
output "ARN" {
    value = "${aws_instance.web.arn}"
}