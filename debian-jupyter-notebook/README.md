debian-jupyter-notebook
=======================

This is a debian image for [jupyter notebook](https://jupyter.org/) installed from debian packages only.

Images and Tags
---------------

Following images are build on [docker hub](https://hub.docker.com/r/pl31/debian-jupyter-notebook/tags/).

- `pl31/debian-jupyter-notebook:stretch` (`latest`)
- `pl31/debian-jupyter-notebook:buster`

Jupyter versions used can be found here:

- [stretch](https://packages.debian.org/stretch/python3-notebook) (`latest`)
- [buster](https://packages.debian.org/stretch/python3-notebook)

Run image
---------

`docker run -i -p 127.0.0.1:8888:8888 -t pl31/debian-jupyter-notebook:stretch`
