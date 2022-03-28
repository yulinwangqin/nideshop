FROM node:12-slim

WORKDIR /usr/src/shop
COPY package.json /usr/src/shop/package.json
RUN npm install --only=production

COPY src /usr/src/shop/src
COPY www /usr/src/shop/www
COPY production.js /usr/src/shop/production.js

ENV DOCKER=true
EXPOSE 8360
CMD [ "node", "/usr/src/shop/production.js" ]