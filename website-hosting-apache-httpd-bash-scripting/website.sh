#!/bin/bash
############################################
#Variables
URL="https://www.tooplate.com/zip-templates/2134_gotto_job.zip"
ARTIFACT="2134_gotto_job"

############################################
# Installing dependencies
sudo yum install wget unzip httpd -y

# Create a temporary directory
mkdir -p /tmp/webfiles
cd /tmp/webfiles

############################################
# Start and enable httpd
sudo systemctl start httpd
sudo systemctl enable httpd

############################################
# Setting up the website
wget $URL
unzip $ARTIFACT.zip
sudo cp -R $ARTIFACT/* /var/www/html

############################################
# Restart apache httpd
sudo systemctl restart httpd

echo "Website hosted on Apache HTTP Server!"
