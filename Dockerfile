FROM golang:latest

RUN mkdir -p /go/src/app

COPY get.sh /go/src/app

WORKDIR /go/src/app

RUN bash get.sh

COPY . /go/src/app

RUN go get ./...

CMD go run router.go

EXPOSE 5051 