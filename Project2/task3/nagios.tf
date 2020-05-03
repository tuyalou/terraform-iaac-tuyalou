# resource "null_resource" "nagios_user" {
#   provisioner "remote-exec" {
#     connection {
#         type            = "ssh"
#         user            = "centos"
#         private_key     = "${file("~/.ssh/id_rsa")}"
#         host            = "${aws_instance.nagiosserver.public_ip}"
#     }
#     inline = [
#       "cat /usr/local/nagios/etc/htpasswd.users",
#       ]  
#   }    
# }