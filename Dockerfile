FROM golang:alpine

# change directory to app 
WORKDIR /go/src/app

# copy files from host machine
ADD . /go/src/app

# build the application
RUN go mod init && go build -o violin

# open port 8080
EXPOSE 8080

# start the app
CMD ["./violin"]

