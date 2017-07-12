FROM alpine:3.4

MAINTAINER Ding Wen Xiang "624380857@qq.com"

ADD https://raw.githubusercontent.com/docker-zone/docker-os-sshd/master/run.sh /run.sh
ADD https://raw.githubusercontent.com/docker-zone/docker-os-sshd/master/process_ssh.sh /process_ssh.sh

RUN apk add --no-cache openssh \
    && apk add --no-cache pwgen \
    && chmod +x /process_ssh.sh \
    && /process_ssh.sh \
    && rm -rf /process_ssh.sh \
    && chmod +x /run.sh

EXPOSE 22

CMD ["/run.sh"]
