#!/bin/bash
usermod -a -G apache ec2-user
exit
groups
chown -R ec2-user:apache /var/www
find /var/www -type d -exec sudo chmod 2775 {} \;
find /var/www -type f -exec sudo chmod 0664 {} \;

