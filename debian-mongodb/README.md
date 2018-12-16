docker-debian-mongodb
=====================

This is a debian image for [mongodb](https://www.mongodb.org/) installed from debian packages only.

Images and Tags
---------------

Following images are build on [docker hub](https://hub.docker.com/r/pl31/debian-mongodb/tags/).

- `pl31/debian-mongodb:stretch` (`latest`)

Mongodb versions used can be found here:

- [stretch](https://packages.debian.org/stretch/mongodb-server) (`latest`)

Run image
---------

`docker run -i -p 127.0.0.1:27017:27017 -p 127.0.0.1:28017:28017 -t pl31/debian-mongodb:stretch`
