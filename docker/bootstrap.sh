#!/bin/bash

echo "Bootstrap is running..."
echo "Link in preinstalled packages...";
# rm -rf /root/app/node_modules
# ln -s /root/node_modules /root/app/node_modules
echo "go starting the app...";

# echo "Current directory: $PWD"
ls

cd /root/app
# npm ls --depth=0
# echo "Current directory: $PWD"
ls

echo
which go
which bash
go version
echo

# npm ls --depth=0

chmod -R 0777 /tmp
echo "Tailing the service..."
# tail -f /root/app/app.log
# echo "Current directory: $PWD"
ls

echo "Current directory: $PWD"
ls
echo "Current Go environment: $GO_ENV"
# echo "Run status in bootstrap: $RUN_STATUS"


if [ "$GO_ENV" == "compile" ]; then
  echo "Compiling Go Application for production..."
  # npm run build 
fi

# if [ "$GO_ENV" == "production" ]; then
# 	echo "Runing production Go Application"
# 	npm run production
# fi

if [ "$GO_ENV" == "development" ]; then
  echo "Starting Go Application..."
  # npm run start-docker
  go run main.go
fi