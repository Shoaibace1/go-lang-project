# Use the official Golang image as the base image
FROM golang:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Initialize Go module
RUN go mod init your-module-name

# Build the Go application
RUN go build -o main .


# Command to run the executable
CMD ["./main"]
