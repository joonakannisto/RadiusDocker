FROM ubuntu:latest
MAINTAINER JK

RUN apt-get update
RUN apt-get install -y freeradius 
ADD clients.conf /etc/freeradius/clients.conf
ADD eap.conf /etc/freeradius/eap.conf
ADD users /etc/freeradius/users 
#ADD cert.pem /etc/freeradius/certs 
EXPOSE \
    1812/udp \
    1813 \
    18120

CMD "/bin/bash" 
