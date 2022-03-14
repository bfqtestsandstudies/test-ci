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

coverage: report
	@echo "generate coverage html"
	go tool cover -html=tmp/coverage.out