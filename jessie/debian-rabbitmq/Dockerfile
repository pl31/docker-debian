FROM pl31/debian:jessie
MAINTAINER Patrick Büch <dh@paco.pl31.de>

# install services
RUN echo "Europe/Berlin" > /etc/timezone && \
    dpkg-reconfigure tzdata && \
    apt-get -y update && \
    apt-get -y upgrade && \
    apt-get -y install \
        rabbitmq-server

# configure rabbitmq
RUN echo "[{rabbit, [{loopback_users, []}]}]." > /etc/rabbitmq/rabbitmq.config && \
    service rabbitmq-server start && \
    rabbitmq-plugins enable rabbitmq_management && \
    service rabbitmq-server stop

# runtime configuration
ENTRYPOINT service rabbitmq-server start && while true; do sleep 1d; done

# expose ports
EXPOSE 5672
EXPOSE 15672
