#!/bin/bash
sudo yum install mariadb-server -y
sudo yum install mariadb -y
sudo systemctl start mariadb
sudo systemctl enable mariadb
sudo mysql_secure_installation