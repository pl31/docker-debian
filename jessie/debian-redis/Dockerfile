FROM pl31/debian:jessie
MAINTAINER Patrick Büch <dh@paco.pl31.de>

# install services
RUN echo "Europe/Berlin" > /etc/timezone && \
    dpkg-reconfigure tzdata && \
    apt-get -y update && \
    apt-get -y upgrade && \
    apt-get -y install \
        redis-server \
        redis-tools

# configure redis
RUN sed -i -- 's/^bind 127.0.0.1/bind 0.0.0.0/g' /etc/redis/redis.conf

# runtime configuration
ENTRYPOINT service redis-server start && while true; do sleep 1d; done

# expose ports
EXPOSE 6379
