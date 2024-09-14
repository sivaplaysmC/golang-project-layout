SRC = cmd/main.go

.PHONY: all clean build run

# Build target that creates a binary
build: $(SRC)
	go build -o build/main $(SRC)

# Emulate `go run` behavior, compiling and running without creating a binary
run:
	go run $(SRC)

# Clean target to remove the built binary
clean:
	rm -f build/main
