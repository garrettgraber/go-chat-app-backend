#!/bin/bash

FILE="go.mod"
if [ -f $FILE ];
then
   echo "File $FILE exists."
else
   echo "File $FILE does not exist, copying..."

	 cp ../$FILE $FILE
	 echo "after go.mod has copied.."
fi
#copy in go.mod if it is different
cmp -s go.mod ../go.mod > /dev/null
if [ $? -eq 1 ]; then
	echo "go.mod has updated... copying...";
    cp ../go.mod .
else
    echo "go.mod is unchanged.";
fi
echo "Building go-chat-app-backend..."

docker build -t go-chat-app-backend . 
# docker build --no-cache -t go-chat-app-backend .

echo "Build Done!"