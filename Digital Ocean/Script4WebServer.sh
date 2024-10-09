#!/bin/bash

# Update package list and upgrade installed packages
sudo apt-get update && sudo apt-get upgrdae -y

# Install Apache web server
sudo apt-get install apache2 -y

# Enable Apache to start on boot
sudo systemctl enable apache2

# Start Apache web server
sudo systemctl start apache2

# Allow Apache through firewall (if UFW is active)
sudo ufw allow 'Apache'

# Set permissions to the default web directory
sudo chown -R www-data:www-data /var/www/html

# Create a simple HTML page to confirm the web server is running
echo "<html>
<head><title>Welcome to MKK's WebSites</title></head>
<body>
<h1>Hello, this is a simple IaC project using Terraform!!</h1>
</body>
</html>" | sudo tee /var/www/html/index.html

# Restart Apache to ensure changes take effect
sudo systemctl restart apache2

# Confirm Apache is running
sudo systemctl status apache2