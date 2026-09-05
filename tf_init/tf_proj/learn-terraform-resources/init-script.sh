#!/bin/bash
dnf update -y
dnf install -y httpd php
systemctl enable --now httpd
usermod -a -G apache ec2-user
chown -R ec2-user:apache /var/www
chmod 2775 /var/www
find /var/www -type d -exec chmod 2775 {} \;
find /var/www -type f -exec chmod 0664 {} \;
cd /var/www/html
ec2-metadata -i > index.html
curl -s -S -O https://raw.githubusercontent.com/pgp-007/aws/refs/heads/main/index.php
