#!/usr/bin/env bash
PID=0
if [ -f './pid' ]; then
    PID=$(cat ./pid)
fi

if ps -p $PID > /dev/null
then
   echo "Service with $PID is already running"
else
    nohup java -jar -Dspring.profiles.active=prod -Dspring.config.location=application.properties EnsolversServer-0.0.1-SNAPSHOT.jar > EnsolversServer-0.0.1-SNAPSHOT.out 2> errors.txt < /dev/null & PID=$!; echo $PID > ./pid
fi