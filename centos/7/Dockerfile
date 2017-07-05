FROM centos:7

MAINTAINER Ding Wen Xiang "624380857@qq.com"

ARG AUTHORIZED_KEYS
ARG ROOT_PASS

ADD https://github.com/docker-zone/docker-os-sshd/install_sshd.sh /app/tools/sshd/install_sshd.sh
ADD https://github.com/docker-zone/docker-os-sshd/run.sh /app/tools/sshd/run.sh

RUN yum update -y \
    && yum install -y openssh-server \
	&& yum install -y epel-release \
	&& mkdir -p /var/run/sshd \
	&& rm -rf ssh_host* \
	&& ssh-keygen -q -N "" -t rsa -f ssh_host_ecdsa_key \
	&& ssh-keygen -q -N "" -t rsa -f ssh_host_ed25519_key \
	&& ssh-keygen -q -N "" -t rsa -f ssh_host_rsa_key \
	&& /app/tools/sshd/install_ssd.sh \
	&& /app/tools/sshd/run.sh
	&& yum clear all

EXPOSE 22
