FROM golang:alpine
LABEL version="0.1"
LABEL description="This image combines golang with the awscli. It is intended for Continuous Integration of Golang apps."
MAINTAINER ingo.jaeckel@gmail.com
RUN apk --no-cache update && \
    apk --no-cache add python py-pip py-setuptools ca-certificates groff less bash && \
    pip --no-cache-dir install awscli && \
    rm -rf /var/cache/apk/*
