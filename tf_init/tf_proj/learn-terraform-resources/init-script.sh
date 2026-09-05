#!/bin/bash
dnf update -y
dnf remove -y httpd httpd-tools
dnf install -y httpd php php-mysqlnd mariadb105-server
systemctl enable --now httpd
usermod -a -G apache ec2-user
chown -R ec2-user:apache /var/www
chmod 2775 /var/www
find /var/www -type d -exec chmod 2775 {} \;
find /var/www -type f -exec chmod 0664 {} \;
cd /var/www/html
TOKEN=$(curl -s -S -X PUT "http://169.254.169.254/latest/api/token" -H "X-aws-ec2-metadata-token-ttl-seconds: 21600")
curl -s -S -H "X-aws-ec2-metadata-token: $TOKEN" http://169.254.169.254/latest/meta-data/instance-id -o index.html
curl -s -S -O https://raw.githubusercontent.com/hashicorp/learn-terramino/master/index.php
