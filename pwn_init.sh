#!/bin/bash

echo "Author : giantbranch "
echo
echo "Github : https://github.com/giantbranch/pwn-env-init"
echo

cd ~/
# change sourse to ustc
echo "I suggest you modify the /etc/apt/sources.list file to speed up the download."
echo "Press Enter to continue~"
read -t 5 test
#sudo  sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list
# change sourse —— deb-src 
sudo sed -i 's/# deb-src/deb-src/' "/etc/apt/sources.list"
# change pip source
mkdir ~/.pip
echo -e "[global]\nindex-url = https://pypi.douban.com/simple/\n[install]\ntrusted-host = pypi.douban.com" >  ~/.pip/pip.conf
# support 32 bit
dpkg --add-architecture i386
sudo apt-get update
# sudo apt-get -y install lib32z1
sudo apt-get -y install libc6-i386
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
# install one_gadget
sudo apt-get -y install ruby
sudo gem install one_gadget
# download 
git clone https://github.com/niklasb/libc-database.git ~/libc-database
echo "Do you want to download libc-database now(Y/n)?"
read input
if [[ $input = "n" ]] || [[ $input = "N" ]]; then
	echo "you can cd ~/libc-database and run ./get to download the libc at anytime you want"
else
	cd ~/libc-database && ./get
fi
echo "========================================="
echo "=============Good, Enjoy it.============="
echo "========================================="
