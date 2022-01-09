#Pulling ubuntu docker image
FROM ubuntu

MAINTAINER alvent

ARG DEBIAN_FRONTEND=noninteractive

#Update and Upgrade the ubuntu system
RUN apt update; apt dist-upgrade -y

#Installing apache2 as webserber and mariadb-server as database server
RUN apt install -y apache2 mariadb-server

#Running entrypoint for apache
ENTRYPOINT apachectl -D FOREGROUND
