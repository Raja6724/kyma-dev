FROM node:16.15.0

WORKDIR /usr/src/app
COPY /package*.json ./

RUN npm install -g npm@9.1.1

COPY /. .
EXPOSE 4004
USER node
CMD [ "npm", "start" ]
