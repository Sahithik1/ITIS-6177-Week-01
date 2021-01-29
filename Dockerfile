FROM node:12

WORKDIR /app

COPY package*.json ./

RUN npm install

RUN npm install express

COPY . .

ENV PORT=3000

EXPOSE 3000

CMD ["npm", "start"]