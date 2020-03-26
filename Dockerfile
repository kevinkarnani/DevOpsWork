FROM node:8
RUN mkdir -p /app
WORKDIR /app
COPY . /app
RUN rm -rf node_modules && npm install --production
CMD [ "node", "server.js"]
EXPOSE 3001
