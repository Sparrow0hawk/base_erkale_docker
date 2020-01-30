FROM node:argon

# create an app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install depedencies
COPY package.json /usr/src/app
RUN npm install

# bundle app source
COPY . /usr/src/app

EXPOSE 8080
CMD ["npm", "start"]
