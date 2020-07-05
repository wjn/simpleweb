# specify base image
FROM node:alpine

# container location for working files
WORKDIR /usr/app 

# copy package.json and run npm install
# prevents running npm install when we change app files that aren't 
# package.json
COPY ./package.json ./
RUN npm install

# copy over app files
COPY ./ ./

# set default command
CMD ["npm", "start"]