FROM ubuntu:22.04
LABEL maintainer="Lorenzo Bettini"

ENV container docker
ENV LC_ALL C
ENV DEBIAN_FRONTEND noninteractive

# software-properties-common is required for codename in ppa to work automatically
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        software-properties-common \
        python3 sudo bash ca-certificates iproute2 python3-apt

VOLUME ["/sys/fs/cgroup", "/tmp", "/run"]

CMD ["/usr/bin/systemctl"]