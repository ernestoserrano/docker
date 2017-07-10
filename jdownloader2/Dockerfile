FROM centos:latest

#Installs Dummy X Org Driver
RUN yum update -y \
&& yum install -y openssh-server tigervnc-server xorg-x11-drv-dummy supervisor \
&& yum clean all

#Retrives X Dummy Config File
ADD http://xpra.org/xorg.conf /etc/X11/xorg.conf
ADD

VOLUME ["/tmp/.X11-unix"]

EXPOSE 5900
EXPOSE 22

CMD ["/usr/bin/Xorg", "-noreset", "+extension", "GLX", "+extension", "RANDR", "+extension", "RENDER", "-logfile", "./10.log", "-config", "./xorg.conf", ":1"]
