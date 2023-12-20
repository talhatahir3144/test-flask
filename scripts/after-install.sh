# #!/bin/bash

# cd /var/www/flask-app

# python3 -m pip install -r requirements.txt
# python3 -m pip install --upgrade flask werkzeug

# # Set permissions for the app directory and its contents
# sudo chown -R ubuntu:ubuntu .

# # Start the Python application and store its PID in a file
# nohup python3 app.py > /var/log/flask-app.log 2>&1 &
# sudo echo $! > /var/run/flask-app.pid

#!/bin/bash

cd /var/www/flask-app

python3 -m pip install -r requirements.txt
python3 -m pip install --upgrade flask werkzeug

# Set permissions for the app directory and its contents
sudo chown -R ubuntu:ubuntu .

# Start the Python application and store its PID in a file
nohup python3 app.py > /var/log/flask-app.log 2>&1 &
echo $! | sudo tee /var/run/flask-app.pid > /dev/null
