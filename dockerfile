# Dockerfile.dev
FROM node:20-alpine

# WORKDIR /home/app
WORKDIR /app

#COPY source destination
COPY package*.json ./

# Install app dependencies;
RUN npm install

# Copy the rest of the project files
COPY . .

# expose port;
EXPOSE 8080

#Run app
CMD ["npm", "start"]