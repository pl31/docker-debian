FROM pl31/debian:stretch
MAINTAINER Patrick Büch <dh@paco.pl31.de>

# install services
RUN echo "Europe/Berlin" > /etc/timezone && \
    dpkg-reconfigure tzdata && \
    apt-get -y update && \
    apt-get -y upgrade && \
    apt-get -y install \
        python3-notebook python3-widgetsnbextension

# runtime configuration
ENTRYPOINT python3 -m notebook

# expose ports
EXPOSE 8080
