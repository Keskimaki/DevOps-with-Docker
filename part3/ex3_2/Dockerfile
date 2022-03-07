#docker run -v /var/run/docker.sock:/var/run/docker.sock ...

FROM docker:git

WORKDIR /usr/src/app

COPY build.sh .

CMD "./build.sh"
