FROM node:8-slim

RUN mkdir /src

RUN npm install nodemon@dev -g

WORKDIR /src
ADD app/package.json /src/package.json
RUN npm install

ADD app/nodemon.json /src/nodemon.json

EXPOSE 3000

CMD npm start