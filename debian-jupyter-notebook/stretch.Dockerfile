FROM pl31/debian:stretch
MAINTAINER Patrick Büch <dh@paco.pl31.de>

# install services
RUN echo "Europe/Berlin" > /etc/timezone && \
    dpkg-reconfigure tzdata && \
    apt-get -y update && \
    apt-get -y upgrade && \
    apt-get -y install \
        python3-pip \
        python3-notebook python3-widgetsnbextension

RUN apt-get -y install python3-requests python3-alembic tox python3-psycopg2 && \
    pip3 install --no-cache-dir pgcontents

# runtime configuration
CMD python3 -m notebook --no-browser --no-mathjax --ip=* --port=8888

# expose ports
EXPOSE 8888
