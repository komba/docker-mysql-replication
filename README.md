# docker-mysql-replication
Just simple neat MySQL replication demo for docker containers

# Usage
```git clone https://github.com/komba/docker-mysql-replication.git```

```cd docker-mysql-replication```

```docker-compose up -d```

```docker exec -it docker-mysql-replication_replica_1 mysql -u root -p -e "show slave status\G"```
