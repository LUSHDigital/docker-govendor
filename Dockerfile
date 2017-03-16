FROM golang:alpine

RUN apk add --no-cache git openssl \
    && go get -u github.com/kardianos/govendor

COPY docker-govendor-entrypoint /usr/local/bin/

VOLUME ["/go/src/app"]
WORKDIR /go/src/app

ENTRYPOINT ["docker-govendor-entrypoint"]
