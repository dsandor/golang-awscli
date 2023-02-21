FROM golang:alpine

ARG PIP_DISABLE_PIP_VERSION_CHECK=1
ARG PIP_NO_CACHE_DIR=1

LABEL version="1.0"
LABEL description="This image provides a number of tools to build & deploy Go applications to AWS: go, awscli, samcli, less, bash, git, jq, file, curl"
MAINTAINER david.sandor@gmail.com
RUN apk --no-cache update && \
    apk --no-cache add python3 python3-dev py-pip py-setuptools ca-certificates groff less bash git jq file curl gcc musl-dev libffi-dev && \
    pip install awscli && \
    pip install aws-sam-cli && \
    rm -rf /var/cache/apk/*