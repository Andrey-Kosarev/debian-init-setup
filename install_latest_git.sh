GIT_VERSION=2.47.1
CWD=$(pwd)

sudo apt remove --purge --auto-remove -y git

# dependencies
sudo apt install -y dh-autoreconf libcurl4-gnutls-dev libexpat1-dev \
  gettext libz-dev libssl-dev

sudo apt install -y asciidoc xmlto docbook2x
sudo apt install -y install-info
# sudo apt install -y git-all

wget https://www.kernel.org/pub/software/scm/git/git-$GIT_VERSION.tar.gz

sudo tar -C /opt -zxf git-$GIT_VERSION.tar.gz
cd /opt/git-$GIT_VERSION

make configure
./configure --prefix=/usr
make -j $(nproc) all doc info
sudo make -j $(nproc) install install-doc install-html install-info

cd $CWD
sudo rm -rf /opt/git-$GIT_VERSION
sudo rm git-$GIT_VERSION.tar.gz


git --version
