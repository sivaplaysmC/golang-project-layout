SRC = cmd/main.go

.PHONY: all clean build run

init:
	rm go.mod -f
	go mod init $(pkgname)
	sed -i "s/dummy_backend/$(pkgname)/g" ./cmd/main.go
	go mod tidy
	echo "REMEMBER: remove .git directory, create new github repo, and add your github repo to origin."
	echo "REMEMBER: remove .git directory, create new github repo, and add your github repo to origin."
	echo "REMEMBER: remove .git directory, create new github repo, and add your github repo to origin."

# Build target that creates a binary
build: $(SRC)
	go build -o build/main $(SRC)

# Emulate `go run` behavior, compiling and running without creating a binary
run:
	go run $(SRC)

# Clean target to remove the built binary
clean:
	rm -f build/main
