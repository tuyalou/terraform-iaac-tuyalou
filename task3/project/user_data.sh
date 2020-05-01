#!/bin/bash
sudo su -
yum install httpd -y
systemctl start httpd
systemctl enable httpd
yum install curl -y
curl https://assets.nagios.com/downloads/nagiosxi/install.sh | sh