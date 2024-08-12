# Use the official Go image to build and run the application
FROM golang:1.22 

# Set the Current Working Directory inside the container
WORKDIR /app

# Copy the Go Modules manifests
COPY go.mod go.sum ./

# Download the dependencies. Dependencies will be cached if the go.mod and go.sum files are not changed
RUN go mod download

# Copy the source code into the container
COPY . .

# Build the Go app
RUN go build -o main .

# Expose the port the app runs on
EXPOSE 9090

# Command to run the executable
CMD ["./main"]


