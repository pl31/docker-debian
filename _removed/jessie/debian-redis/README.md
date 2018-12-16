docker-debian-redis
===================

This is a debian image for [redis](http://redis.io/) installed from debian packages only.

Images and Tags
---------------

Following images are build on [docker hub](https://hub.docker.com/r/pl31/debian-redis/tags/).

- `pl31/debian-redis:jessie` (`latest`)
- `pl31/debian-redis:stretch`

Redis versions used can be found here:

- [jessie](https://packages.debian.org/jessie/redis-server)
- [stretch](https://packages.debian.org/stretch/redis-server)

Run image
---------

`docker run -i -p 127.0.0.1:6379:6379 -t pl31/debian-redis:stretch`

