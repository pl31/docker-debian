FROM debian:stretch-slim
MAINTAINER Patrick Büch <dh@paco.pl31.de>
LABEL description="Base image for debian with cleanup and tools"

ENV DEBIAN_FRONTEND noninteractive

COPY files/ /

RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get -y install \
        localepurge \
        curl \
        nano \
        git
