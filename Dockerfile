# Use an official Node.js runtime as a parent image
FROM node:14
# Set the working directory
WORKDIR /usr/src/app
# Copy package.json and package-lock.json
COPY package*.json ./
# Install app dependenciess
RUN npm install
# Copy the app source code
COPY . .
# Expose the port the app runs on
EXPOSE 8000
# Command to run the app
CMD ["node", "server.js"]
