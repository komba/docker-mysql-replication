echo "Setting up the master instance"

command="GRANT REPLICATION SLAVE, REPLICATION CLIENT ON *.* TO '$MYSQL_REPLICA_USER'@'%' IDENTIFIED BY '$MYSQL_REPLICA_PASSWORD'; FLUSH PRIVILEGES;"
MYSQL_PWD=$MYSQL_ROOT_PASSWORD mysql -s -uroot -e "$command"

echo "DONE!"
