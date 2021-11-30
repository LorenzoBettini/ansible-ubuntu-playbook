FROM ubuntu:20.04
LABEL maintainer="Lorenzo Bettini"

ARG DEBIAN_FRONTEND=noninteractive

ENV pip_packages "ansible"

# Install dependencies.
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       apt-utils \
       build-essential \
       locales \
       libffi-dev \
       libssl-dev \
       libyaml-dev \
       python3-dev \
       python3-setuptools \
       python3-pip \
       python3-yaml \
       software-properties-common \
       sudo iproute2 \
    && apt-get clean \
    && rm -Rf /var/lib/apt/lists/* \
    && rm -Rf /usr/share/doc && rm -Rf /usr/share/man

# Fix potential UTF-8 errors with ansible-test.
RUN locale-gen en_US.UTF-8

# Install Ansible via Pip.
RUN pip3 install $pip_packages

# Install Ansible inventory file.
RUN mkdir -p /etc/ansible
RUN echo "[local]\nlocalhost ansible_connection=local" > /etc/ansible/hosts

ADD https://raw.githubusercontent.com/gdraheim/docker-systemctl-replacement/master/files/docker/systemctl3.py /usr/bin/systemctl
RUN chmod +x /usr/bin/systemctl

CMD ["/usr/bin/systemctl"]