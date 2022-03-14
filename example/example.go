package main

import (
	"log"
	"net/http"
)

func main() {
	resp, err := http.Get("https://google.com")
	if err != nil {
		log.Fatalln(err)
	}

	defer resp.Body.Close()

	log.Println(resp.Status)
}
