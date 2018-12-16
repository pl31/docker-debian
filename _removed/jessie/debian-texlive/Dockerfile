FROM pl31/debian:jessie
MAINTAINER Patrick Büch <dh@paco.pl31.de>

# install texlive
RUN echo "Europe/Berlin" > /etc/timezone && \
    dpkg-reconfigure tzdata && \
    apt-get -y update && \
    apt-get -y upgrade && \
    apt-get -y install \
        texlive-xetex \
        texlive-extra-utils \
        texlive-fonts-recommended \
        texlive-fonts-extra \
        texlive-latex-extra \
        texlive-latex-recommended \
        texlive-lang-english \
        texlive-lang-german
