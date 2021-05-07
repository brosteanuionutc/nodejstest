FROM node:16
ENV NODE_ENV=production

RUN mkdir /app
WORKDIR /app

RUN npm install --production
RUN npm install express

COPY . .

EXPOSE 3000

CMD [ "node", "server.js" ]
