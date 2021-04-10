FROM golang:alpine

RUN apk add --no-cache git gcc musl-dev
ADD . /go/src/github.com/sohey-dr/CA_Go
WORKDIR /go/src/github.com/sohey-dr/CA_Go

RUN go get
