#!/bin/bash
# RHEL 10 - HTTPD Server Setup Script

# Update packages
dnf update -y

# Install Apache HTTP Server
dnf install -y httpd

# Enable and start Apache service
systemctl enable --now httpd

# Allow HTTP service in firewall (if firewalld is enabled)
systemctl enable --now firewalld
firewall-cmd --permanent --add-service=http
firewall-cmd --reload

# Create sample web page
echo "<h1>Welcome to Apache HTTP Server on RHEL 10</h1>" > /var/www/html/index.html

# Restart Apache service
systemctl restart httpd