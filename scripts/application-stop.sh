# # #!/bin/bash

# # # Read the PID from the file
# # pid=$(cat /var/run/flask-app.pid)

# # # Kill the process
# # kill $pid

# # # Remove the PID file
# # rm /var/run/flask-app.pid

# #Name of the application, adjust as per your Python script's name

# #Use pgrep to find the process ID of your Flask app based on its name
#echo "Stopping Flask app"
#!/bin/bash

# Find the process using port 5000 and kill it
#PID=$(sudo lsof -t -i:5000)
PID=$(sudo lsof -i :5000 | grep LISTEN | awk '{print $2}')
if [ -z "$PID" ]; then
    echo "No process is using port 5000."
else
    echo "Killing process on port 5000 with PID: $PID"
    sudo kill $PID
fi
