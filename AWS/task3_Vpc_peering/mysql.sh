#!/bin/bash
sudo yum install mariadb-server -y
sudo yum install mariadb -y
systemctl start mariadb
systemctl enable mariadb
sudo mysql_secure_installation