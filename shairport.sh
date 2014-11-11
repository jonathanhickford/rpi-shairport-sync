git clone https://github.com/abrasive/shairport.git
cd shairport
./configure
make
make install


cp scripts/debian/init.d/shairport /etc/init.d/shairport
cd /etc/init.d
chmod a+x shairport
update-rc.d shairport defaults
sudo useradd -g audio shairport