FROM node:16-bullseye
WORKDIR "/app"

RUN npm install npm pm2 -g
COPY . .
RUN yarn install

CMD ["su", "node", "-c", "pm2-runtime /app/ecosystem.config.js"]
