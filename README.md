## Docker

## Project Info

This project contains many Dockerfile. Dockerfile can be used to build Docker containers using the **'docker build'** command and depending on the container it can be used run application in an isolated enviroment as a service on a headless server.

## Table of Contents

[**Folders Info**](#folder-info)

[**JDownloader2**](jJDownloader2)
* [**Building**](#building-jdownloader2-container)

## Folder Info
* [jdownloader2](#jdownloader2) runs the jdownloader2 application using Xorg's Xdummy driver for a fake display  and tigervnc to connect to it remotely using VNC protocol

# JDownloader2

## Building JDownloader2 container:

* 1. Clone this repository to your local computer:

'''git clone https://github.com/ernestoserrano/docker.git ~/docker '''

* 2. Change into the Jdownloader2 directory:

'''cd ~/docker/jdownloader2 '''

* 3. Build the container:

'''docker build -rm -t jdownloader2:1.0 .'''

# Running JDownloader2 container:

'''docker run -d -p 5900 -v ~/Downloads/:/Downloads/ --name  jdownloader2'''
