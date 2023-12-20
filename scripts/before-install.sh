#!/bin/bash
# Any error during execution causes the script to exit
set -e

# Set executable permissions for specific scripts
chmod +x /var/www/flask-app/scripts/after-install.sh
chmod +x /var/www/flask-app/scripts/application-start.sh
chmod +x /var/www/flask-app/scripts/application-stop.sh

# Stop the existing application server
sudo systemctl stop myapp.service || echo "Application server could not be stopped or was not running."

# Clean up any existing files in the application directory
sudo rm -rf /var/www/flask-app/*
# Installing Python
sudo apt-get update
sudo apt-get install -y python3
sudo apt-get install -y python3-pip