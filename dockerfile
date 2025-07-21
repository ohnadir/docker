# mentioned node version from docker
FROM node:latest

# create app directory;
COPY . /home/app/index.js

# Create app directory;
WORKDIR /home/app

# expose port;
EXPOSE 3000

#Run app
CMD ["npm", "start"]