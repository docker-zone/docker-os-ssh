FROM centos:6.8

MAINTAINER Ding Wen Xiang "624380857@qq.com"

ADD https://raw.githubusercontent.com/docker-zone/docker-os-sshd/master/run.sh /run.sh
ADD https://raw.githubusercontent.com/docker-zone/docker-os-sshd/master/process_ssh.sh /process_ssh.sh

RUN yum install -y openssh-server \
    && yum install -y epel-release \
    && yum install -y pwgen \
    && chmod +x /process_ssh.sh \
    && /process_ssh.sh \
    && rm -rf /process_ssh.sh \
    && chmod +x /run.sh \
    && yum remove -y epel-release \
    && yum clean all

EXPOSE 22

CMD ["/run.sh"]