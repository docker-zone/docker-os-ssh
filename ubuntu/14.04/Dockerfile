FROM ubuntu:14.04

MAINTAINER Ding Wen Xiang "624380857@qq.com"

ADD https://raw.githubusercontent.com/docker-zone/docker-os-sshd/master/run.sh /run.sh

RUN apt-get update -y \
    && apt-get install -y openssh-server \
    && apt-get install -y pwgen \
    && mkdir -p /app/tools/sshd \
    && mkdir -p /var/run/sshd \
    && sed -ri 's/PermitRootLogin\s+without-password/PermitRootLogin yes/g' /etc/ssh/sshd_config \
    && chmod +x /run.sh \
    && apt-get clean

EXPOSE 22

CMD ["/run.sh"]