#!/bin/bash

#Navigate to the application directory
cd /var/www/flask-app

Install dependencies
python3 -m pip install -r requirements.txt
python3 -m pip install --upgrade flask werkzeug

sudo python3 app.py > /var/log/flask-app.log 2>&1 &