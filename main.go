package main

import (
	"context"
	"log"
	"time"
)

func main() {
	ctx := context.Background()
	startPollingContentToolsCron(ctx)
}

func startPollingContentToolsCron(ctx context.Context) {
	for {
		<-time.After(4 * time.Second)
		log.Println("4 seconds has passed again")
	}
}
