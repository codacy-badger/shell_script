#!/bin/bash

Install() {
   sudo yum install httpd wget nfs  php* vim mariadb -y
   sudo systemctl  start mariadb, httpd
   sudo systemctl enable httpd
   }
Download() {
   cd /opt
   sudo  wget https://ftp.drupal.org/files/projects/drupal-7.53.tar.gz
   sudo tar -xvzf drupal-7.53.tar.gz
   cd drupal-7.53
   sudo cp -R * /var/www/html
   sudo setenforce 0
   }
echo "Script will run now"
Install 
Download
