FROM ubuntu:20.04

RUN apt-get update -qq && apt-get install -qqy \
    apt-transport-https \
    ca-certificates \
    curl \
    lxc \
    iptables

RUN curl -fsSL get.docker.com -o get-docker.sh && sh get-docker.sh

CMD ["docker version"]
