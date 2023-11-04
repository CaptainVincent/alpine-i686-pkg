# syntax=docker/dockerfile:1

FROM --platform=$BUILDPLATFORM i386/alpine:latest AS base

RUN cat /etc/apk/repositories
RUN apk add --no-cache python3 py3-pip
RUN pip install auditwheel

RUN wget https://github.com/CaptainVincent/alpine-i686-pkg/releases/download/0.0.1/mitmproxy.tar.gz
RUN tar -xvzf mitmproxy.tar.gz

# RUN echo https://dl-cdn.alpinelinux.org/alpine/v3.19/main > /etc/apk/repositories
# RUN echo https://dl-cdn.alpinelinux.org/alpine/v3.19/community >> /etc/apk/repositories
# RUN apk update
# RUN apk upgrade

RUN apk add --no-cache python3 py3-pip libressl-dev
RUN ls /usr/lib
RUN pip install --no-index --find-links=out mitmproxy