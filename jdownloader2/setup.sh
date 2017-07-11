#!/bin/bash

DISPLAY=":$VNC_DISPLAY"
export DISPLAY
#/usr/sbin/useradd $VNC_USER -m -s /usr/bin/bash -p $VNC_PASS

/usr/bin/mkdir $HOME/.scripts
/usr/bin/cp /tmp/vncpasswd.sh $HOME/.scripts
/usr/bin/rm /tmp/vncpasswd.sh
#/usr/bin/chown -R $VNC_USER:$VNC_USER /home/$VNC_USER/.scripts/


#/usr/bin/su - $VNC_USER -c "/usr/bin/chmod +x /home/$VNC_USER/.scripts/vncpasswd.sh"
#/usr/bin/su - $VNC_USER -c "/home/$VNC_USER/.scripts/vncpasswd.sh $VNC_PASS"

/usr/bin/chmod +x $HOME/.scripts/vncpasswd.sh
$HOME/.scripts/vncpasswd.sh $VNC_PASS

/usr/bin/supervisord -c /etc/supervisor/supervisord.conf

/usr/bin/bash
