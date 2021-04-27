FROM golang:latest

RUN mkdir /app
WORKDIR /app

RUN go mod init github.com/sohey-dr/CA_Go \
    && go get -u github.com/gin-gonic/gin \
    && go get -u github.com/go-sql-driver/mysql \
    && go get -u github.com/jinzhu/gorm \