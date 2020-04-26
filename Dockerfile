FROM golang:latest

RUN mkdir -p /go/src/app

WORKDIR /go/src/app

RUN go get github.com/ethereum/go-ethereum/common
RUN go get github.com/ethereum/go-ethereum/core/types
RUN go get github.com/ethereum/go-ethereum/ethclient
RUN go get github.com/gorilla/mux

COPY . /go/src/app

CMD go run router.go

EXPOSE 5051 