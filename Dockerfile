FROM node:14.16.0-alpine3.13
RUN addgroup app && adduser -S -G app app
USER app
WORKDIR /app
COPY . .
RUN npm install
ENV API_URL=http://api.myapp.com/
EXPOSE 3000
# shell form
# /bin/sh - linux
# cmd - windows
# spins aother shell process
# CMD npm start
# or Exec Form
# offers flexibility
CMD ["npm","start"]
# ENTRYPOINT [ "npm", "start" ]

