FROM debian:jessie

RUN  apt-get update && \
      DEBIAN_FRONTEND=noninteractive apt-get install -y vim curl wget \
      ca-certificates --no-install-recommends --no-install-suggests  && \
      apt-get clean  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 80
