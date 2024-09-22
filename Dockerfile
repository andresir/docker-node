# FROM node:14
# WORKDIR /usr/src/app
# COPY package*.json app.js ./
# RUN npm install
# EXPOSE 3000
# CMD ["node", "app.js"]


FROM node:17.9.0 AS base
WORKDIR /usr/src/app
COPY package*.json app.js ./
RUN npm install
COPY . .

FROM base as builder
WORKDIR /usr/src/app
RUN npm run build

FROM node:17.9.0-alpine3.15
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install --only=production
COPY --from=builder /usr/src/app/dist ./

EXPOSE 3000
ENTRYPOINT ["node","./app.js"]
