FROM ubuntu:20.04

WORKDIR /usr/src/app

COPY website.sh .

RUN apt update

RUN apt install -y curl

CMD ./website.sh
