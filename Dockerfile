FROM node

WORKDIR /app
COPY package.json .
COPY src/bot.js /app/src/bot.js
RUN chown -R node /app \
  && chmod +x /app/src/bot.js

USER node
RUN npm install
COPY . .

ENTRYPOINT [ "npm", "start" ]