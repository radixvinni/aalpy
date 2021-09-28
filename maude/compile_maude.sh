
wget http://maude.cs.illinois.edu/w/images/d/d3/Maude-3.1.tar.gz
tar xzf Maude-3.1.tar.gz
cd maude-3.1
apt-get install dirmngr software-properties-common
add-apt-repository ppa:sri-csl/formal-methods
apt-key adv --keyserver keyserver.ubuntu.com --recv FA8E1301F4D3932C
nano /etc/apt/sources.list.d/sri-csl-ubuntu-formal-methods-impish.list
apt-get update
apt-get install yices2 yices2-dev
apt install build-essential flex bison libgmp-dev libtecla-dev libbdd-dev liblibsigsegv-dev libncurses-dev
nano +87 src/ObjectSystem/fileOutcomes.cc
nano +602 src/Meta/interpreterManagerSymbol.cc
./configure
make
cd src/Main
ldd maude
mkdir /root/maude
ldd maude | grep "=> /" | awk '{print $3}' | xargs -I '{}' cp -v '{}' /root/maude
cd /root/maude
LD_LIBRARY_PATH=. /chroot/oldstable/lib/ld-linux.so.2 /chroot/oldstable/root/maude/maude


