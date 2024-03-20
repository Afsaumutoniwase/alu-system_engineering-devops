#!/bin/bash

# Ensure Nginx is installed
sudo apt update
sudo apt install nginx -y

# Verify Nginx configuration
sudo nginx -t

# Check if Nginx is running
sudo systemctl status nginx

# Check Nginx default configuration
sudo cat /etc/nginx/sites-available/default

# Check permissions and ownership of /var/www/html directory
ls -l /var/www/html

# Restart Nginx service
sudo systemctl restart nginx

# Verify Nginx is running and listening on port 80
sudo netstat -tuln | grep ':80'

# Test Nginx response on port 80
curl -I http://localhost

