#!/bin/bash
sudo su -
yum install httpd -y
systemctl start httpd
systemctl enable httpd
wget https://www.free-css.com/assets/files/free-css-templates/download/page239/black.zip
unzip black.zip
mv black/*  /var/www/html/
mv index.html /var/www/html/