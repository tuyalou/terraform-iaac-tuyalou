#!/bin/bash
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
sudo wget https://www.free-css.com/assets/files/free-css-templates/download/page239/black.zip
sudo unzip black.zip
mv black/*  /var/www/html/
sudo mv index.html /var/www/html/
echo "<h1>Bir Minnak Black Sheep</h1>" | sudo tee /var/www/html/index.html