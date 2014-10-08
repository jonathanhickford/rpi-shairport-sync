FROM resin/rpi-raspbian:wheezy

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y --fix-missing git curl zlib1g-dev subversion
RUN apt-get update

RUN apt-get install -y openssl libreadline6-dev git-core zlib1g libssl-dev
RUN apt-get install -y libyaml-dev libsqlite3-dev sqlite3
RUN apt-get install -y libxml2-dev libxslt-dev
RUN apt-get install -y autoconf automake libtool bison

RUN curl -L get.rvm.io | bash -s stable --rails

RUN . "/usr/local/rvm/scripts/rvm"

RUN echo ruby -v >/start
RUN chmod +x /start
 