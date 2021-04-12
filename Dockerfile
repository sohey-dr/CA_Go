FROM golang:latest

RUN mkdir /app
WORKDIR /app

RUN go mod init github.com/sohey-dr/CA_Go \
    && go get github.com/gin-gonic/gin \