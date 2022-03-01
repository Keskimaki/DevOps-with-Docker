FROM ubuntu:20.04

WORKDIR /usr/src/app

COPY website.sh .

RUN apt-get update && apt-get install -y curl

ENTRYPOINT [ "./website.sh" ]
