FROM mhart/alpine-node:12

WORKDIR /opt/app

COPY package*.json ./

RUN npm ci

COPY . .

EXPOSE 3000

CMD ["node", "index.js"]

