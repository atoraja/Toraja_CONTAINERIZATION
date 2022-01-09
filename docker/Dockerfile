FROM ubuntu
MAINTAINER alvent

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update; apt dist-upgrade -y

RUN apt install -y apache2 mariadb-server

ENTRYPOINT apachectl -D FOREGROUND
