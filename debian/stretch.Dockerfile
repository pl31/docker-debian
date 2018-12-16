FROM debian:stretch-slim
MAINTAINER Patrick Büch <dh@paco.pl31.de>

ENV DEBIAN_FRONTEND noninteractive

COPY stretch.files/ /

RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get -y install \
        localepurge \
        curl \
        nano \
        git
