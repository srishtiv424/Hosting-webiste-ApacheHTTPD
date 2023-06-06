#!/bin/bash

############################################33
#Installing dependencies 
sudo yum install wget unzip httpd -y
mkdir -p /tmp/webfiles 
cd /tmp/webfiles


#Start and enable httpd
sudo systemctl start httpd && sudo systemctl enable httpd

# Setting up a website
wget https://www.tooplate.com/zip-templates/2134_gotto_job.zip
unzip 2134_gotto_job.zip
cp 2134_gotto_job/* /var/www/html

#Restart apache httpd
sudo systemctl restart httpd


