#/bin/bash -e

mkdir -p /var/log/powerdns

docker run -d --restart=always -p 53:53/tcp -p 53:53/udp --name dns -v /srv/var/log/powerdns:/var/log/powerdns cloyne/powerdns-slave
