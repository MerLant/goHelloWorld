package main

import (
    "fmt"
    "net/http"
)

func main() {
    http.HandleFunc("/", "Hello World")
    http.ListenAndServe(":8888", nil)
}