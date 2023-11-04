# syntax=docker/dockerfile:1

FROM --platform=$BUILDPLATFORM i386/alpine:latest AS base

RUN cat /etc/apk/repositories
RUN apk add --no-cache gettext gettext-dev curl bash

RUN apk update
RUN apk add --no-cache openjdk8

SHELL ["/bin/bash", "-c"]
RUN <<EOT
    set -ex
    mkdir -p /root/startup
    mkdir -p /root/.local/share/Tachidesk
    java -version
EOT

COPY init.sh /root/init.sh
COPY startup_script.sh /root/startup_script.sh
COPY server.conf.template /root/server.conf.template
RUN /root/init.sh;
RUN /root/startup_script.sh