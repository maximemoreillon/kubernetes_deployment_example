# Base image on node
FROM node:10

# Create app directory
WORKDIR /usr/src/app

# Copy all files into container
COPY . .

# Install packages
RUN npm install

# Expose port
EXPOSE 12345

# Run app
CMD [ "node", "server.js" ]
