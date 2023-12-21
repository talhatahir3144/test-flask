# # rm /var/run/flask-app.pid

# #Name of the application, adjust as per your Python script's name
# APP_NAME="app.py"
PID_5000_PORT=$(sudo lsof -i :5000 | grep LISTEN | awk '{print $2}')

# #Use pgrep to find the process ID of your Flask app based on its name
# PID=$(pgrep -f $APP_NAME)

# #If the application is running, kill it
# if [ ! -z "$PID" ]; then
#     echo "Stopping Flask app"
#     kill $PID
# fi
echo "Stopping Flask app"
kill $PID_5000_PORT
