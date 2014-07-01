FROM cloyne/powerdns

MAINTAINER Mitar <mitar.docker@tnode.com>

EXPOSE 53/udp 53/tcp

COPY ./etc/bindbackend.conf /etc/powerdns/bindbackend.conf
RUN mkdir -p /etc/powerdns/bind
RUN chown pdns:pdns /etc/powerdns/bind
