FROM golang:latest

RUN mkdir /app
WORKDIR /app

RUN go mod init CA_Go \
    && go mod tidy