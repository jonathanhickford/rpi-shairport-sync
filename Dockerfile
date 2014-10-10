FROM resin/rpi-raspbian:latest

RUN apt-get update -q
RUN apt-get install -qy curl
RUN \curl -sSL https://get.rvm.io | bash -s stable 
RUN /bin/bash -l -c "rvm requirements"
RUN /bin/bash -l -c "rvm install 2.1.0"

#RUN chmod u+x /usr/local/rvm/scripts/rvm
#RUN ./ /usr/local/rvm/scripts/rvm
#RUN rvm install 2.1.0

#RUN /bin/bash -l -c "source /usr/local/rvm/scripts/rvm"

ADD . /App

RUN echo /usr/local/rvm/bin/rvm ruby /App/helloworld.rb >/start
RUN chmod +x /start
 