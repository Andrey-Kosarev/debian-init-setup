VERSION=3.13
BUILD=1

# dependencies
sudo apt install -y build-essential libssl-dev zlib1g-dev libbz2-dev \
    libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
    xz-utils tk-dev libffi-dev liblzma-dev python3-openssl git

wget https://www.python.org/ftp/python/$VERSION.$BUILD/Python-$VERSION.$BUILD.tgz

sudo tar -C /opt -xzf Python-$VERSION.$BUILD.tgz

cwd=$(pwd)

cd /opt/Python-$VERSION.$BUILD

sudo ./configure --enable-optimizations
sudo make -j 8
sudo make altinstall


# update-alternatives
sudo update-alternatives --install /usr/bin/python3 python3 $(which "python$VERSION") 1

#cleanup
cd $cwd;
sudo rm -rf /opt/PYTHON-$VERSION.$BUILD;
sudo rm Python-$VERSION.$BUILD.tgz;

