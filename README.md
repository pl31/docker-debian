docker-debian
=============

This is a debian image derived from the [official debian repository](https://hub.docker.com/_/debian/).

Differences to official debian image
------------------------------------

- Use `ftp.de.debian.org` mirror
- Use `main`, `contrib` and `non-free` repositories
- Avoid installation of locales, man pages and doc
- Install additional tools 
  * `nano`
  * `curl`
  * `git`
- Call cleanup script `/root/.docker-build-scripts/cleanup` after build
  * remove apt caches
  * remove man pages
  * remove docs

Images and Tags
---------------

Following images are build on [docker hub](https://hub.docker.com/r/pl31/debian/tags/).

- `pl31/debian:jessie`
- `pl31/debian:stretch`
