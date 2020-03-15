FROM node:10

# create app directory
WORKDIR /opt/nodejs-server-app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["node", "server.js"]