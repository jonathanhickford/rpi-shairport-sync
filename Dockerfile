FROM resin/rpi-raspbian:wheezy

#RUN apt-get -y install python-software-properties
RUN apt-get -y update
 
# install essentials
RUN apt-get -y install build-essential
RUN apt-get install -y -q git
 
RUN add-apt-repository -y ppa:chris-lea/nginx-devel
RUN apt-get install -y -q nginx-full
 
# Install rbenv
RUN git clone https://github.com/sstephenson/rbenv.git /usr/local/rbenv
RUN echo '# rbenv setup' > /etc/profile.d/rbenv.sh
RUN echo 'export RBENV_ROOT=/usr/local/rbenv' >> /etc/profile.d/rbenv.sh
RUN echo 'export PATH="$RBENV_ROOT/bin:$PATH"' >> /etc/profile.d/rbenv.sh
RUN echo 'eval "$(rbenv init -)"' >> /etc/profile.d/rbenv.sh
RUN chmod +x /etc/profile.d/rbenv.sh
 
# install ruby-build
RUN mkdir /usr/local/rbenv/plugins
RUN git clone https://github.com/sstephenson/ruby-build.git /usr/local/rbenv/plugins/ruby-build
 
ENV RBENV_ROOT /usr/local/rbenv
 
ENV PATH "$RBENV_ROOT/bin:$RBENV_ROOT/shims:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
# does not work. PATH is set to
# $RBENV_ROOT/shims:$RBENV_ROOT/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
 
# install ruby2
RUN rbenv install 2.1.0

RUN echo ruby -v >/start
RUN chmod +x /start
 