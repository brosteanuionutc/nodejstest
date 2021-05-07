FROM node:16
ENV NODE_ENV=production

WORKDIR /app

RUN npm install --production

COPY . .

EXPOSE 3000

CMD [ "node", "server.js" ]
