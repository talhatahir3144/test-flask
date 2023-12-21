
# # #!/bin/bash

# # # Read the PID from the file
# # pid=$(cat /var/run/flask-app.pid)

# # # Kill the process
# # kill $pid

# # # Remove the PID file
# # rm /var/run/flask-app.pid

# #Name of the application, adjust as per your Python script's name
PID_5000_PORT=$(sudo lsof -i :5000 | grep LISTEN | awk '{print $2}')

# #Use pgrep to find the process ID of your Flask app based on its name
echo "Stopping Flask app: $PID_5000_PORT"
#kill $PID_5000_PORT
