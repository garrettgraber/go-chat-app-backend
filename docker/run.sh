#!/bin/bash


./build.sh
# echo "Deleting "
docker rm -f go-chat-app-backend 
echo "Running go-chat-app-backend..."

# docker run -it --name go-chat-app-backend --env GO_ENV=development -v /${PWD}/../://root/app -p 3000:3000 go-chat-app-backend /bin/bash

docker run --name go-chat-app-backend --env GO_ENV=development -v /${PWD}/../://root/app -p 3000:3000 go-chat-app-backend
