FROM node:8.12-slim
RUN npm install -g sails
RUN npm install -g mocha

WORKDIR /usr/src/app
COPY package.json package.json
RUN npm install

COPY . .

LABEL version="2018.10.10"	maintainer="John Zou <jzou77@gmail.com>"
