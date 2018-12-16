docker-debian-redis
===================

This is a debian image for [redis](http://redis.io/) installed from debian packages only.

Images and Tags
---------------

Following images are build on [docker hub](https://hub.docker.com/r/pl31/debian-redis/tags/).

- `pl31/debian-redis:stretch` (`latest`)

Redis versions used can be found here:

- [stretch](https://packages.debian.org/stretch/redis-server) (`latest`)

Run image
---------

`docker run -i -p 127.0.0.1:6379:6379 -t pl31/debian-redis:stretch`
