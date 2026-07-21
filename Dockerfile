FROM node:24-alpine

WORKDIR /usr/src/app

COPY package*.json ./
COPY index.js .

# Permitir certificados autofirmados del Nexus
RUN npm config set strict-ssl false

RUN npm install

EXPOSE 3000

CMD ["node", "index.js"]
