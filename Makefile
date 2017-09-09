build:
	CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o logging .
	docker build -t jasonmichels/logging:develop .
run:
	docker-compose build
	docker-compose up -d