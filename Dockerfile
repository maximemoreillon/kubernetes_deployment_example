# Base image on node
# FROM node:10
FROM arm64v8/node:10

# Create app directory and move into it
WORKDIR /usr/src/app

# Copy all files into container
COPY . .

# Proxy configuration
RUN npm config set proxy http://172.16.98.151:8118
RUN npm config set https-proxy http://172.16.98.151:8118

# Install packages
RUN npm install

# Expose port
EXPOSE 12345

# Run app
CMD [ "node", "server.js" ]
