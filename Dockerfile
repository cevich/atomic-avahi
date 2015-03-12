#FROM registry.access.redhat.com/rhel7
FROM stackbrew/centos:7
MAINTAINER cevich@redhat.com
RUN yum install -y deltarpm yum-utils &&\
    yum update -y && \
    yum install avahi -y && \
    yum clean all
ADD avahi-daemon.conf /etc/avahi/
ADD ssh.service /etc/avahi/services/
LABEL RUN /usr/bin/docker run --detach --name NAME --net=host -v /etc/localtime:/etc/localtime IMAGE /usr/sbin/avahi-daemon --debug
