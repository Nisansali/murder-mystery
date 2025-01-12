# Use an official Node.js base image
FROM node:14-buster

# Install Meteor
RUN curl https://install.meteor.com/ | sh

# Create app directory
WORKDIR /app

# Copy app files into the container
COPY . /app

# Install NPM dependencies
RUN meteor npm install

# Build the Meteor bundle
RUN meteor build --directory /build

# Install dependencies in the bundle
WORKDIR /build/bundle/programs/server
RUN npm install

# Expose port 3000
EXPOSE 3000

# Start the app
CMD ["node", "/build/bundle/main.js"]
