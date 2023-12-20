#!/bin/bash

# Set executable permissions for specific scripts
chmod +x /var/www/flask-app/scripts/after-install.sh
chmod +x /var/www/flask-app/scripts/application-start.sh
chmod +x /var/www/flask-app/scripts/application-stop.sh

sudo apt-get update
sudo apt-get install -y python3
sudo apt-get install -y python3-pip