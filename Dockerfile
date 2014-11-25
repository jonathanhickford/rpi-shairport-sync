FROM resin/rpi-raspbian:wheezy

RUN apt-get update && apt-get install -y \
autoconf \
avahi-daemon \
build-essential \
dbus \
git \
libasound2-dev \
libavahi-client-dev \
libdaemon0 \
libgpg-error0 \
libpopt-dev \
libssl-dev \
libtool \
supervisor 

RUN mkdir -p \
/var/log/supervisor \
/var/run/dbus

RUN git clone https://github.com/mikebrady/shairport-sync.git
RUN cd shairport-sync && autoreconf -i -f && ./configure --with-alsa --with-avahi --with-ssl=openssl && make && make install

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

COPY start /start
RUN chmod +x /start
 