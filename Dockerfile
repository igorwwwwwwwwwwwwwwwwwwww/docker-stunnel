FROM alpine:edge
MAINTAINER Travis CI GmbH <support+travis-stunnel-docker-image@travis-ci.org>

RUN echo http://dl-6.alpinelinux.org/alpine/edge/community >> /etc/apk/repositories
RUN apk update
RUN apk add bash stunnel

RUN mkdir /run/stunnel
RUN chown stunnel:stunnel /run/stunnel

ADD bin/generate-config-run-stunnel /bin

CMD generate-config-run-stunnel