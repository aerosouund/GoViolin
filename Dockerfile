FROM golang:alpine

WORKDIR /go/src/app

ADD . /go/src/app

RUN go mod init && go build -o violin

EXPOSE 6111

CMD ["./violin"]
