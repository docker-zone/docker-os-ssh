FROM alpine:3.2

MAINTAINER Ding Wen Xiang "624380857@qq.com"

ADD https://raw.githubusercontent.com/docker-zone/docker-os-sshd/master/run.sh /run.sh

RUN apk update \
    && apk add --no-cache openssh \
    && apk add --no-cache pwgen \
    && apk add --no-cache bash \
    && mkdir -p /app/tools/sshd \
    && ssh-keygen -q -N "" -t rsa -f /etc/ssh/ssh_host_ecdsa_key \
    && ssh-keygen -q -N "" -t rsa -f /etc/ssh/ssh_host_ed25519_key \
    && ssh-keygen -q -N "" -t rsa -f /etc/ssh/ssh_host_rsa_key \
    && ssh-keygen -q -N "" -t rsa -f /etc/ssh/ssh_host_dsa_key \
    && sed -ri 's/#PermitRootLogin\s+yes/PermitRootLogin yes/g' /etc/ssh/sshd_config \
    && sed -ri 's/root:!::0:::::/root:*::0:::::/g' /etc/shadow \
    && chmod +x /run.sh \
    && rm -rf /tmp/* /var/cache/apk/*

EXPOSE 22

CMD ["/run.sh"]
