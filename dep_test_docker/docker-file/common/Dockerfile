FROM centos:7.5.1804
RUN yum install -y wget
RUN yum install -y tar
RUN yum install -y vim
RUN yum install -y cronie-noanacron
RUN yum install -y openssh-server openssh-clients
RUN sed -ri 's/^#Permitlogin yes/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN echo 'root:root' | chpasswd
EXPOSE 22
RUN mkdir  ~/.ssh \ 
&&  chmod 700 ~/.ssh \
&&  touch  ~/.ssh/authorized_keys \
&&  chmod 600  ~/.ssh/authorized_keys 
RUN yum install -y sudo \
&& adduser mug \
&& echo 'mug:ma' | chpasswd \
&& usermod -aG wheel mug \
&& touch /etc/profile
CMD /bin/bash
