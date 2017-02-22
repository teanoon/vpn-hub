FROM ubuntu:14.04

ADD expressvpn.deb expressvpn.deb
RUN apt-get update && apt-get install -y --no-install-recommends \
    software-properties-common && \
    add-apt-repository ppa:ubuntu-lxc/lxd-stable && \
    apt-get update && apt-get install -y --no-install-recommends \
    golang expect && \
    rm -rf /var/lib/apt/lists/* && \
    dpkg -i expressvpn.deb && rm expressvpn.deb

VOLUME /var/lib/expressvpn
COPY entrypoint.sh /usr/local/bin/
ENTRYPOINT ["entrypoint.sh"]
