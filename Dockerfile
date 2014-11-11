FROM resin/rpi-raspbian:latest

RUN apt-get update

#RUN apt-get install -qy curl
#RUN \curl -sSL https://get.rvm.io | bash -s stable 
#RUN /bin/bash -l -c "rvm install 2.1.0"

RUN apt-get install -y ruby

ADD . /App

#RUN echo /usr/local/rvm/bin/rvm all do ruby /App/helloworld.rb >/start
RUN echo 'ruby /App/helloworld.rb' >/start
RUN chmod +x /start
 