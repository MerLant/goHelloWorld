FROM golang:latest AS builder

WORKDIR /app

COPY . .

RUN go build -o server main.go

FROM alpine:latest

COPY --from=builder /app/server /usr/local/bin/server

EXPOSE 8080

CMD ["server"]
