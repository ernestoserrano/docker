FROM centos:latest

# Installs necessary packages
RUN yum update -y \
&& yum install -y expect epel-release xorg-x11-drv-dummy python-setuptools java-1.8.0-openjdk \
&& yum install -y x11vnc \
&& yum clean all \
&& easy_install supervisor

# Copy Sample X Dummy Config File from http://xpra.org/xorg.conf
ADD xorg.conf /etc/X11/xorg.conf

# Copy VNC Password Script
ADD vncpasswd.sh /tmp/vncpasswd.sh

ADD setup.sh /tmp/setup.sh

ADD supervisord.conf /etc/supervisor/supervisord.conf

ENV VNC_USER="vncuser"
ENV VNC_PASS="vncpass"
ENV VNC_DISPLAY="1"

RUN export VNC_PASS VNC_USER VNC_DISPLAY \
&&  chmod +x /tmp/setup.sh

ENTRYPOINT ["/tmp/setup.sh"]
