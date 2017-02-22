FROM ubuntu:14.04

RUN apt-get update && apt-get install -y --force-yes --no-install-recommends \
    openvpn w3m tmux && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /vpn
