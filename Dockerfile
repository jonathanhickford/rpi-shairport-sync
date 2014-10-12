FROM resin/rpi-raspbian:latest

RUN apt-get update -q
RUN apt-get install -qy curl
RUN \curl -sSL https://get.rvm.io | bash -s stable 
RUN /bin/bash -l -c "rvm install 2.1.0"

ADD . /App

RUN echo /usr/local/rvm/bin/rvm all do ruby /App/helloworld.rb >/start
RUN chmod +x /start
 