FROM resin/rpi-raspbian:wheezy

RUN sudo apt-get install -y git curl zlib1g-dev subversion
RUN sudo apt-get update

RUN sudo apt-get install -y openssl libreadline6-dev git-core zlib1g libssl-dev
RUN sudo apt-get install -y libyaml-dev libsqlite3-dev sqlite3
RUN sudo apt-get install -y libxml2-dev libxslt-dev
RUN sudo apt-get install -y autoconf automake libtool bison

RUN curl -L get.rvm.io | bash -s stable --rails

RUN source ~/.rvm/scripts/rvm

RUN echo ruby -v >/start
RUN chmod +x /start
 