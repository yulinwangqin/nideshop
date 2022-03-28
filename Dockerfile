FROM node:12-slim

WORKDIR /usr/src/app
COPY package.json /usr/src/app/shop/package.json
RUN npm install --only=production

COPY src /usr/src/app/shop/src
COPY view /usr/src/app/shop/view
COPY www /usr/src/app/shop/www
COPY production.js /usr/src/app/shop/production.js

ENV DOCKER=true
EXPOSE 8360
CMD [ "node", "/usr/src/app/shop/production.js" ]