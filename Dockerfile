FROM resin/rpi-raspbian:wheezy

RUN apt-get update
#RUN apt-get -y upgrade
#RUN apt-get install -y --fix-missing git curl zlib1g-dev subversion
#RUN apt-get update

#RUN apt-get install -y openssl libreadline6-dev git-core zlib1g libssl-dev
#RUN apt-get install -y libyaml-dev libsqlite3-dev sqlite3
#RUN apt-get install -y libxml2-dev libxslt-dev
#RUN apt-get install -y autoconf automake libtool bison

#RUN curl -L get.rvm.io | bash -s stable --rails
#RUN \curl -sSL https://get.rvm.io | bash -s stable 
#WORKDIR /usr/local/
#RUN ./ rvm/scripts/rvm
#RUN rvm install 2.1.0

#RUN ./usr/local/rvm/scripts/rvm

RUN apt-get install -y git-core
RUN git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
RUN echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
RUN echo 'eval "$(rbenv init -)"' >> ~/.bashrc

RUN git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
RUN git clone https://github.com/sstephenson/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash

RUN apt-get install build-essential libssl-dev libcurl4-openssl-dev libreadline-dev -y

RUN rbenv install 2.1.0 -k

RUN echo ruby -v >/start
RUN chmod +x /start
 