# # #!/bin/bash

# # # Read the PID from the file
# # pid=$(cat /var/run/flask-app.pid)

# # # Kill the process
# # kill $pid

# # # Remove the PID file
# # rm /var/run/flask-app.pid

# #Name of the application, adjust as per your Python script's name
# APP_NAME="app.py"

# #Use pgrep to find the process ID of your Flask app based on its name
# PID=$(pgrep -f $APP_NAME)

# #If the application is running, kill it
# if [ ! -z "$PID" ]; then
#     echo "Stopping Flask app"
#     kill $PID
# fi
