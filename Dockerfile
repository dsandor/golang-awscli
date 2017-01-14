FROM golang:alpine
LABEL version="0.2"
LABEL description="This image provides a number of tools to build & deploy Golang applications to AWS: awscli, jq, terraform, etc."
MAINTAINER ingo.jaeckel@gmail.com
RUN apk --no-cache update && \
    apk --no-cache add python py-pip py-setuptools ca-certificates groff less bash git jq file terraform && \
    pip --no-cache-dir install awscli && \
    rm -rf /var/cache/apk/*
