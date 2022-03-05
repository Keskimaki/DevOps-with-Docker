FROM node:16

EXPOSE 5000

WORKDIR /usr/src/app

COPY package* ./

RUN npm install && npm install -g serve

COPY . .

# Changed from http://localhost:8080 to work with proxy
ENV REACT_APP_BACKEND_URL=http://localhost/api

RUN npm run build

CMD serve -s -l 5000 build
