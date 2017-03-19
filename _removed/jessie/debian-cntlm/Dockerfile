FROM pl31/debian:jessie
MAINTAINER Patrick Büch <dh@paco.pl31.de>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -y update && \ 
    apt-get -y upgrade && \
    apt-get -y install \
        cntlm

EXPOSE 3128
