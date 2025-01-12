# Use Node.js 12 on Debian Bullseye (default to 64-bit architecture)
FROM node:12-bullseye

# Set the working directory
WORKDIR /app

# Install basic build tools
RUN apt-get update && apt-get install -y \
    build-essential \
    && apt-get clean

# Install Meteor globally
ENV METEOR_ALLOW_SUPERUSER=true
RUN curl https://install.meteor.com/ | sh

# Copy project files into the container
COPY . /app

# Install project dependencies
RUN meteor npm install

# Expose default Meteor port
EXPOSE 3000

# Command to run the app
CMD ["meteor", "run", "--port", "3000", "--allow-superuser"]
