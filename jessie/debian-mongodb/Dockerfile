FROM pl31/debian:jessie
MAINTAINER Patrick Büch <dh@paco.pl31.de>

# install services
RUN echo "Europe/Berlin" > /etc/timezone && \
    dpkg-reconfigure tzdata && \
    apt-get -y update && \
    apt-get -y upgrade && \
    apt-get -y install \
        mongodb-server

# configure mongodb
RUN sed -i -- 's/^bind_ip = 127.0.0.1/bind_ip = 0.0.0.0/g' /etc/mongodb.conf

# runtime configuration
ENTRYPOINT service mongodb start && while true; do sleep 1d; done

# expose ports
EXPOSE 27017
EXPOSE 28017
