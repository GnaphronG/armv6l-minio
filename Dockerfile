FROM resin/armhf-alpine

MAINTAINER Guillaume Goussard <guillaume.goussard@gmail.com>

WORKDIR /go/src/app

RUN apk add --no-cache curl && \
    curl -s -O https://dl.minio.io/server/minio/release/linux-armv6l/minio && \
    chmod +x ./minio

EXPOSE 9000
ENTRYPOINT ["./minio"]
VOLUME ["/export"]
