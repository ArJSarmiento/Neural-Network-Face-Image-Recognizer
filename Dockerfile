# Start with a base image that includes the necessary tools
FROM ubuntu:latest

# Install make and other dependencies you might need
RUN apt-get update && apt-get install -y \
    build-essential
    # Add any other packages your project requires after build-essential

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the local code to the container's working directory
COPY . .
