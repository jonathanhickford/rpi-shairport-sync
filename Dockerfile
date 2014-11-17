#FROM resin/rpi-raspbian:latest
FROM ubuntu

RUN apt-get update && apt-get install -y \
git \
autoconf \
libtool \
libdaemon-dev \ 
libasound2-dev \
libpopt-dev \
dbus \
avahi-daemon \
libavahi-client-dev \
libssl-dev \
build-essential \
supervisor 


RUN mkdir -p \
/var/log/supervisor \
/var/run/dbus

COPY shairport.sh /tmp/
RUN sh /tmp/shairport.sh

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 5353

COPY start /start
RUN chmod +x /start
CMD ["sh", "/start"]
 