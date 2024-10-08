FROM node:14

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

RUN echo "PORT=3000" > .env

EXPOSE 3000
CMD ["node", "index.js"]
