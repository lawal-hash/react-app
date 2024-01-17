FROM node:14.16.0-alpine3.13
WORKDIR /app
COPY . .
RUN npm install
RUN apk install python
