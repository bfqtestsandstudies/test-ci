test:
	@echo "running unit test"
	go clean --testcache 
	go test -v -race ./...

lint:
	@echo "running lint"
	golangci-lint run ./...

report:
	@echo "running generation of unit test coverage.out and report.json"
	go clean --testcache
	go test -v -coverprofile tmp/coverage.out -json ./... >> tmp/report.json

all: test lint report