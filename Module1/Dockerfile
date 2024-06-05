FROM centos:7
# MAINTAINER is deplricated
#MAINTAINER Andriy andrew.grebeniuk@gmail.com
LABEL Author="Andriy andrew.grebeniuk@gmail.com"

#Add repo file
#ADD ...

RUN yum --assumeyes update && \
yum --assumeyes install bash nmap iproute && \
yum clean all

ENTRYPOINT [ "/usr/bin/nmap"]
CMD [ "-sn", "172.17.0.0/24" ]
