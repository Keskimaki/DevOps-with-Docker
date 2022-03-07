# 1.17GB -> 94MB
FROM node:16-alpine AS build-env

WORKDIR /usr/src/app

COPY package* ./

RUN npm install

COPY . .

ENV REACT_APP_BACKEND_URL=http://localhost/api

RUN npm run build


FROM alpine

EXPOSE 5000

WORKDIR /usr/src/app

COPY --from=build-env /usr/src/app/build ./build

RUN apk add --no-cache npm && npm install -g serve && \ 
    adduser -D appuser

USER appuser

CMD serve -s -l 5000 build
