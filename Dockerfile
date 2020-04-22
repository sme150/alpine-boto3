FROM alpine:3.11
MAINTAINER Scott Estes

RUN apk update && \
    apk upgrade && \
    apk add --update build-base py-pip && \
    rm -rf /var/cache/apk/*

RUN pip install boto3 pyyaml requests

WORKDIR /app
