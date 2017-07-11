FROM alpine:3.4

MAINTAINER Ding Wen Xiang "624380857@qq.com"

ADD https://raw.githubusercontent.com/docker-zone/docker-os-sshd/master/run.sh /run.sh

RUN apk add --no-cache openssh \
    && apk add --no-cache pwgen \
    && apk add --no-cache bash \
    && mkdir -p /app/tools/sshd \
    && ssh-keygen -q -N "" -t rsa -f /etc/ssh/ssh_host_ecdsa_key \
    && ssh-keygen -q -N "" -t rsa -f /etc/ssh/ssh_host_ed25519_key \
    && ssh-keygen -q -N "" -t rsa -f /etc/ssh/ssh_host_rsa_key \
    && ssh-keygen -q -N "" -t rsa -f /etc/ssh/ssh_host_dsa_key \
    && sed -ri 's/#PermitRootLogin\s+prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config \
    && chmod +x /run.sh

EXPOSE 22

CMD ["/run.sh"]

