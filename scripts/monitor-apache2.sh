# Create a Variable 
STATUS="$(systemctl is-active apache2.service)"

# Conditional Statement 
if [ "$STATUS" == "inactive" ];
then
    echo "Starting the Httpd Web Service..."
    systemctl restart apache2.service
else
    echo "`date +%Y-%m-%d` Httpd Service is Healthy and Running & PID = `ps -aux | grep httpd | grep -v grep | grep root | awk -F " " '{print $2}'`"
fi
