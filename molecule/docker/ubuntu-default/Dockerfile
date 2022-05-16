FROM ubuntu:22.04
LABEL maintainer="Lorenzo Bettini"

ENV container docker
ENV LC_ALL C
ENV DEBIAN_FRONTEND noninteractive

# apt-utils is required for codename in ppa to work automatically
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        apt-utils \
        build-essential \
        software-properties-common \
        python3 sudo bash ca-certificates iproute2 python3-apt \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && rm -Rf /usr/share/doc && rm -Rf /usr/share/man

ADD https://raw.githubusercontent.com/gdraheim/docker-systemctl-replacement/master/files/docker/systemctl3.py /usr/bin/systemctl
RUN chmod +x /usr/bin/systemctl

CMD ["/usr/bin/systemctl"]