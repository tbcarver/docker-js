FROM node:lts-alpine
ENV NODE_ENV=production
WORKDIR /usr/src/app
COPY package*.json ./
RUN sed -i "s/app\/index.js/index.js/g" package.json
RUN npm install --production --silent
COPY ./app .
RUN chown -R node /usr/src/app
USER node
CMD ["node", "index.js"]
