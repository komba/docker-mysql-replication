echo "Setting up the slave instance"

status=`MYSQL_PWD=$MYSQL_PASSWORD mysql -u$MYSQL_USER -h db -e "SHOW MASTER STATUS"`
current_log=`echo $status | awk '{print $6}'`
current_pos=`echo $status | awk '{print $7}'`

command="CHANGE MASTER TO MASTER_HOST='db',MASTER_USER='$MYSQL_USER',MASTER_PASSWORD='$MYSQL_PASSWORD',MASTER_LOG_FILE='$current_log',MASTER_LOG_POS=$current_pos; START SLAVE;"
MYSQL_PWD=$MYSQL_ROOT_PASSWORD mysql -s -uroot -e "$command"

echo "DONE!"
