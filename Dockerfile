FROM golang:latest

WORKDIR /go/src/app

COPY . .

RUN go build -o server .

EXPOSE 8888

CMD ["./server"]
