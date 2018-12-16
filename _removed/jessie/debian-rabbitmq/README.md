docker-debian-rabbitmq
======================

This is a debian image for [rabbitmq](https://www.rabbitmq.com/) installed from debian packages only.

Images and Tags
---------------

Following images are build on [docker hub](https://hub.docker.com/r/pl31/debian-rabbitmq/tags/).

- `pl31/debian-rabbitmq:jessie` (`latest`)
- `pl31/debian-rabbitmq:stretch`

Rabbitmq versions used can be found here:

- [jessie](https://packages.debian.org/jessie/rabbitmq-server)
- [stretch](https://packages.debian.org/stretch/rabbitmq-server)

Run image
---------

`docker run -i -p 127.0.0.1:5672:5672 -p 127.0.0.1:15672:15672 -t pl31/debian-rabbitmq:stretch`
