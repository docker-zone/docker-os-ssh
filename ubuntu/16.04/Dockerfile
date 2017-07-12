FROM ubuntu:16.04

MAINTAINER Ding Wen Xiang "624380857@qq.com"

ADD https://raw.githubusercontent.com/docker-zone/docker-os-sshd/master/run.sh /run.sh
ADD https://raw.githubusercontent.com/docker-zone/docker-os-sshd/master/process_ssh.sh /process_ssh.sh

RUN apt-get update -y \
    && apt-get install -y openssh-server \
    && apt-get install -y pwgen \
    && chmod +x /process_ssh.sh \
    && /process_ssh.sh \
    && rm -rf /process_ssh.sh \
    && chmod +x /run.sh \
    && apt-get clean

EXPOSE 22

CMD ["/run.sh"]