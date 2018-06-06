# pwn 环境一键搭建脚本
cd ~
# change sourse —— deb-src 
sudo sed -i 's/# deb-src/deb-src/' '/etc/apt/sources.list'
# support 32 bit
dpkg --add-architecture i386
sudo apt-get update
sudo apt-get install lib32z1 lib32ncurses5
# install libc with symbol
sudo apt-get install libc6-dbg  
sudo apt-get install libc6-dbg:i386
# download the libc source to current directory(you can use gdb with this example command: directory ~/glibc-2.24/malloc/)
sudo apt-get source libc6-dev
# maybe git？
sudo apt-get install git
# install pwndbg
git clone https://github.com/pwndbg/pwndbg
cd pwndbg
./setup.sh
# install peda
git clone https://github.com/longld/peda.git ~/peda
echo "source ~/peda/peda.py" >> ~/.gdbinit
# install pwntools
sudo apt-get install python
pip install pwntools


