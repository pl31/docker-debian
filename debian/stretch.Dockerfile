FROM debian:stretch-slim
MAINTAINER Patrick Büch <dh@paco.pl31.de>

ENV DEBIAN_FRONTEND noninteractive
ENV LC-ALL C.UTF-8
ENV LANG C.UTF-8

COPY stretch.files/ /

RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get -y install \
        apt-utils \
        localepurge \
        curl \
        nano \
        git
