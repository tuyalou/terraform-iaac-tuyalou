#!/bin/bash
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
sudo wget https://colorlib.com/out/download-shapely/
sudo mv index.html /var/www/html/
echo "<h1>It is better to have less thunder in the mouth and more lightning in the hand</h1>" | sudo tee /var/www/html/index.html