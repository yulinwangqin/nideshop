FROM node:12-slim

WORKDIR /usr/src/app
COPY package.json /usr/src/app/package.json
RUN npm install --only=production

COPY src /usr/src/app/src
COPY www /usr/src/app/www
COPY production.js /usr/src/app/production.js

ENV DOCKER=true
EXPOSE 8360
CMD [ "node", "/usr/src/app/production.js" ]
