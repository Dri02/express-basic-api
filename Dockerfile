FROM node:18-alpine

RUN npm config set http-proxy=http://192.168.205.251:3128
RUN npm config set https-proxy=http://192.168.205.251:3128

ENV http_proxy http://192.168.205.251:3128
ENV https_proxy http://192.168.205.251:3128

WORKDIR /app

COPY ./package.json ./package-lock.json ./

RUN npm install

COPY . .

RUN npm run build

CMD ["npm", "run", "start:prod"]
