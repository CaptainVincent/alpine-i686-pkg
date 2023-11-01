# syntax=docker/dockerfile:1

FROM --platform=$BUILDPLATFORM i386/alpine:latest AS base

RUN cat /etc/apk/repositories
RUN echo https://dl-cdn.alpinelinux.org/alpine/v3.19/main >> /etc/apk/repositories
RUN echo https://dl-cdn.alpinelinux.org/alpine/v3.19/community >> /etc/apk/repositories
RUN apk update
RUN apk upgrade
RUN apk add --no-cache python3 py3-pip python3-dev
RUN apk add --no-cache rust cargo libressl-dev bsd-compat-headers

ARG pkg
RUN pip wheel --wheel-dir=/out $pkg

# RUN apk --no-cache add bash
# CMD ["/bin/bash"]

FROM scratch AS release
COPY --link --from=base /out /
