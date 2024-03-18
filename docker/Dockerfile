FROM golang:latest

# install dumb init for signal passing
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64
RUN chmod +x /usr/local/bin/dumb-init

#RUN go install github.com/gorilla/websocket

WORKDIR /root/app


#copy in the go.mod to the app directory to run the install
# (this directory should be linked over with -v on run so you can live edit your code locally)
ADD ./go.mod /root/go.mod

# install go modules
RUN cd /root/app; go mod download

# expose the port
EXPOSE 3000

# expose the http port

#wire in a startup script
ADD bootstrap.sh /root/bootstrap.sh

CMD /root/bootstrap.sh

