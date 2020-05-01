#!/bin/bash
sudo su -
yum install httpd -y
systemctl start httpd
systemctl enable httpd
yum install curl -y
curl https://assets.nagios.com/downloads/nagiosxi/install.sh | sh

# wget https://www.free-css.com/assets/files/free-css-templates/download/page239/black.zip
# unzip black.zip
# mv black/*  /var/www/html/
# mv index.html /var/www/html/

  # user_data       = <<-EOF
	#                 #!/bin/bash
  #                   sudo yum install httpd -y
  #                   sudo systemctl start httpd
  #                   sudo systemctl enable httpd
                
	# 	echo "<h1>It is better to have less thunder in the mouth and more lightning in the hand</h1>" | sudo tee /var/www/html/index.html
	# EOF