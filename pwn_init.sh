#!/bin/bash

cd ~/
# change sourse —— deb-src 
sudo sed -i 's/# deb-src/deb-src/' "/etc/apt/sources.list"
# change pip source
mkdir ~/.pip
echo -e "[global]\nindex-url = https://pypi.tuna.tsinghua.edu.cn/simple" >  ~/.pip/pip.conf
# support 32 bit
dpkg --add-architecture i386
sudo apt-get update
sudo apt-get -y install lib32z1
# maybe git？
sudo apt-get -y install git gdb
# install pwndbg
git clone https://github.com/pwndbg/pwndbg
cd pwndbg
./setup.sh
# install peda
git clone https://github.com/longld/peda.git ~/peda
echo "source ~/peda/peda.py" >> ~/.gdbinit
# download the libc source to current directory(you can use gdb with this example command: directory ~/glibc-2.24/malloc/)
sudo apt-get source libc6-dev
# install pwntools
sudo apt-get -y install python python-pip
pip install pwntools
echo "Good, Enjoy it."
