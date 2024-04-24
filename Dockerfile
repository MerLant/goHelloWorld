FROM golang:latest AS builder

WORKDIR /app

COPY . .

RUN go build -o server main.go

FROM alpine:latest

WORKDIR /usr/local/bin/

COPY --from=builder /app/server .

EXPOSE 8888

CMD ["server"]
