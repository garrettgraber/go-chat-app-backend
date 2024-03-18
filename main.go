package main

import (
	"fmt"
	"net/http"
	// "github.com/gorilla/websocket"
	"log"
	"github.com/savioxavier/termlink"
)


func handler(w http.ResponseWriter, r *http.Request) {
	urlParam := r.URL.Path[1:]
	if urlParam != "favicon.ico" {
		fmt.Println("URL Param:", urlParam)
	}
  fmt.Fprintf(w, "Hi there, I love %s!", r.URL.Path[1:])
}

func main() {
	fmt.Println("Hello, World!")
	fmt.Println(termlink.ColorLink("Website", "http://localhost:3000/", "red"))
	http.HandleFunc("/", handler)
	log.Fatal(http.ListenAndServe(":3000", nil))
}
