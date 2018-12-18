# slim does not work
#FROM debian:buster-slim
FROM debian:buster
MAINTAINER Patrick Büch <dh@paco.pl31.de>

ENV DEBIAN_FRONTEND noninteractive
ENV LC-ALL C.UTF-8
ENV LANG C.UTF-8

# Disable cleanup scripts for now (build errors)
#COPY buster.files/ /

# apt-utils breaks build, removed
RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get -y install \
        apt-utils \
        localepurge \
        curl \
        nano \
        git
