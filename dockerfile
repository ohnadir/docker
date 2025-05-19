# mentioned node version from docker
FROM node:24-alpine3.20

# create app directory;
WORKDIR /app

# Install all the dependencies from the package.json and package-lock.json
COPY package*.json ./

#Run npm install;
RUN npm install

#Bundle app source;
COPY . .

#Expose port
EXPOSE 8080

#Run app
CMD ["npm", "start"]

# Run it on the terminal; 
# docker build . -t nadir/jext:v1

#Detach docker container;
# docker run -d -p 8001:8080 nadir/jext:v1

#Mount and run docker image;
#docker run -d -p 8001:8080 -v ${PWD}:/app nadir/jext:v1