# Use an official Ubuntu base image
FROM ubuntu:latest

# Install build tools like GCC
RUN apt-get update && apt-get install -y build-essential

# Create a directory for the application
WORKDIR /usr/src/app

# Copy the source files to the container
COPY main.c ./

# Compile the program
RUN gcc -o test_add main.c

# Run the compiled program
CMD ["./test_add"]
