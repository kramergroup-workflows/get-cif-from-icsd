FROM alpine

RUN apk add --no-cache curl
COPY entrypoint.sh /entrypoint.sh

WORKDIR /data

ENTRYPOINT ["/entrypoint.sh"]
