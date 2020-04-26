resource "aws_instance" "web" {
  ami           = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.large"
  key_name      =     "${aws_key_pair.us-east-1-key.key_name}"
  security_groups = ["${aws_security_group.allow_tls.name}"]
  user_data       = <<-EOF
	                #!/bin/bash
                    sudo yum install httpd -y
                    sudo systemctl start httpd
                    sudo systemctl enable httpd
                
		echo "<h1>It is better to have less thunder in the mouth and more lightning in the hand</h1>" | sudo tee /var/www/html/index.html
	EOF
  tags = {
    Name = "HelloWorld"
  }
}