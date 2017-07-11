#!/bin/bash

VNC_PASS="$1"
#VNCPASSWD=/usr/bin/vncpasswd

#/usr/bin/expect <<EOF
#spawn "$VNCPASSWD"
#expect "Password:"
#send "$VNC_PASS\r"
#expect "Verify:"
#send "$VNC_PASS\r"
#expect eof
#exit
#EOF
/usr/bin/mkdir -p $HOME/.vnc
/usr/bin/x11vnc -storepasswd $VNC_PASS $HOME/.vnc/passwd
