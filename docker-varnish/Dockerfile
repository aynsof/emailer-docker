FROM ubuntu
MAINTAINER James Kingsmill james.kingsmill@gmail.com

ENV PATH /usr/local/bin:$PATH

RUN sudo apt-get update
RUN apt-get install -y curl

RUN curl http://repo.varnish-cache.org/debian/GPG-key.txt | sudo apt-key add -
RUN echo 'deb http://repo.varnish-cache.org/ubuntu/ trusty varnish-3.0' >> /etc/apt/sources.list
RUN sudo apt-get install -y varnish

ADD varnish.conf /etc/default/varnish
ADD default.vcl /etc/varnish/default.vcl
ADD start-varnishd.sh /usr/local/bin/start-varnishd

ENV VARNISH_LISTEN_PORT=":6081"

EXPOSE 6081

CMD ["/usr/local/bin/start-varnishd"]
