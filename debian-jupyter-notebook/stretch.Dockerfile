FROM pl31/debian:stretch
MAINTAINER Patrick Büch <dh@paco.pl31.de>

# install services
RUN echo "Europe/Berlin" > /etc/timezone && \
    dpkg-reconfigure tzdata && \
    apt-get -y update && \
    apt-get -y upgrade && \
    apt-get -y install \
        python3-pip \
        jupyter-notebook jupyter-client jupyter-core \
        jupyter-nbconvert jupyter-nbformat \
        jupyter-nbextension-jupyter-js-widgets python3-ipywidgets

RUN apt-get -y install python3-requests python3-alembic python3-psycopg2 \
    tox python-nose && \
    pip3 install --no-cache-dir pgcontents

# runtime configuration
CMD python3 -m notebook --no-browser --no-mathjax --ip=* --port=8888

# expose ports
EXPOSE 8888
