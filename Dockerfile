FROM golang:latest

COPY . /go/src/app
WORKDIR /go/src/app

RUN go build main.go

EXPOSE 8888

CMD ["./main"]
