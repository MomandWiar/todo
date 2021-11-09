FROM node:12-alpine
RUN apk add --no-cache --virtual python g++ make
WORKDIR /app
COPY package.json yarn.lock ./
RUN yarn install --production
CMD ["node", "src/index.js"]docker build -t getting-started .