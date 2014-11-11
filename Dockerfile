FROM resin/rpi-raspbian:latest

RUN apt-get update


RUN apt-get install -y git libao-dev libssl-dev libcrypt-openssl-rsa-perl libio-socket-inet6-perl libwww-perl avahi-utils libmodule-build-perl libasound2-dev libpulse-dev



ADD . /App

RUN sh /App/perl-net-sdp.sh
RUN cp /App/start /start
RUN chmod +x /start
 