# 1.07GB -> 23.3MB
FROM golang:alpine AS build-env

WORKDIR /usr/src/app

COPY . ./

ENV REQUEST_ORIGIN=http://localhost:5000

RUN go build


FROM alpine

EXPOSE 8080

WORKDIR /usr/src/app

COPY --from=build-env /usr/src/app/server ./

RUN adduser -D appuser

CMD ./server
