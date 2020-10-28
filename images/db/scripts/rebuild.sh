if [ "$MYSQL_ENV" == "slave" ]; then
  until MYSQL_PWD=$MYSQL_PASSWORD mysql -u$MYSQL_USER -h db -e ";"
  do
      echo "Waiting for master database connection..."
      sleep 30
  done
fi
