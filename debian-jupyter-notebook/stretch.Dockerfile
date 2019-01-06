FROM pl31/debian:stretch
MAINTAINER Patrick Büch <dh@paco.pl31.de>

USER root

# install services
RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get -y install \
        python3-pip virtualenv \
        jupyter-notebook jupyter-client jupyter-core \
        jupyter-nbconvert jupyter-nbformat \
        jupyter-nbextension-jupyter-js-widgets python3-ipywidgets

# dependencies for jupyter-contrib-nbextensions
RUN apt-get -y install \
        python3-lxml python3-yaml

# add user jupyter to run jupyter
RUN useradd --create-home jupyter

USER jupyter

# create virtual environment and activate it
RUN virtualenv -p python3 --system-site-packages ~/jupyterenv

# install latest notebook 4 + nbextensions
# and activate nbextensions
RUN bash -c "source ~/jupyterenv/bin/activate && \
    pip install --no-cache-dir \
      'notebook<5,>4.3' \
      'jupyter-core<5,>4.3' \
      'jupyter-contrib-nbextensions' && \
    jupyter contrib nbextension install --user && \
    jupyter nbextensions_configurator enable --user" && \
    mkdir ~/notebooks

USER root

# install dependencies for pgcontents
# run pgcontents once to test dependencies
RUN apt-get -y install python3-requests python3-alembic \
    python3-psycopg2 python3-click \
    tox python3-nose

USER jupyter

# Install pgcontents and run once to test dependencies
RUN bash -c "source ~/jupyterenv/bin/activate && \
    pip install --no-cache-dir pgcontents && \
    pgcontents --help"

# runtime configuration
CMD bash -c "source ~/jupyterenv/bin/activate && \
    cd ~/notebooks && \
    jupyter notebook --no-browser --no-mathjax --ip=* --port=8888"

# expose ports
EXPOSE 8888
