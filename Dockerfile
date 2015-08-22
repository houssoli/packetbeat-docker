FROM phusion/baseimage:latest
MAINTAINER Lionel H <houssoli@gmail.com>

RUN apt-get update
RUN apt-get -y -q install libpcap0.8

RUN curl -L -o /tmp/packetbeat_1.0.0-beta2_amd64.deb https://download.elastic.co/beats/packetbeat/packetbeat_1.0.0-beta2_amd64.deb
RUN dpkg -i /tmp/packetbeat_1.0.0-beta2_amd64.deb
ADD packetbeat.yml /etc/packetbeat/packetbeat.yml
#ADD packetbeat.dev/packetbeat.dev.yml /etc/packetbeat/packetbeat.yml
