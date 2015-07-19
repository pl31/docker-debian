FROM debian:stretch
MAINTAINER Patrick Büch <dh@paco.pl31.de>

ENV DEBIAN_FRONTEND noninteractive

COPY files/ /

RUN apt-get -y update && \ 
    apt-get -y upgrade && \
    apt-get -y install localepurge

ONBUILD RUN ~/.docker-build-scripts/cleanup
