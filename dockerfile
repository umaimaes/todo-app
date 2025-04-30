FROM node:12-alpine
RUN apk add --no-cache git
RUN git clone -q https://github.com/umaimaes/todo-app.git
WORKDIR /todo-app
RUN yarn install --production
CMD ["node", "/app/src/index.js"]
