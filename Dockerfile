# Use the official Node.js 18 image based on Alpine Linux.
# https://hub.docker.com/_/node
FROM node:18-alpine

# Set the working directory inside the container.
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available) to the working directory.
COPY package*.json ./

# Install dependencies, including development ones.
RUN npm install

# Copy the rest of the application code to the working directory.
COPY . .

# Expose the application port.
EXPOSE 3000

# Command to run the application in development mode.
CMD ["npm", "run", "dev"]
