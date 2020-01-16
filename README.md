# pwn-env-init

**blog**:https://www.giantbranch.cn/

CTF PWN 做题环境一键搭建脚本

CTF PWN environment one-click build script

理论上适用于debian系的linux x64系统，但强烈建议在Ubuntu x64系统上安装使用

**如果怕麻烦的，可以直接下载我配置好的Ubuntu 16.04，为VMware导出的ovf格式**

链接：https://pan.baidu.com/s/1Ia8NPcXy414QOaiH14T3sQ 
提取码：kypa 

**账号密码：** giantbranch:giantbranch
（root密码可以通过sudo passwd root自行修改）

截图：

![](https://raw.githubusercontent.com/giantbranch/pwn-env-init/master/img/png.png)

**虚拟机的源码不能源码调试有bug，可通过以下命令修复：**

```
rm glibc-2.23* -rf
sudo apt update
sudo apt source libc6-dev
```

# Use

### python2

```
wget https://raw.githubusercontent.com/giantbranch/pwn-env-init/master/pwn_init_py2.sh
chmod +x pwn_init_py2.sh
sudo ./pwn_init_py2.sh
```
### python3
```
wget https://raw.githubusercontent.com/giantbranch/pwn-env-init/master/pwn_init_py3.sh
chmod +x pwn_init_py3.sh
sudo ./pwn_init_py3.sh
```
而pwn_init.sh就作为备份文件吧

# Instructions

1. 为64位系统提供32位运行环境支撑
2. 下载了libc6的源码，方便源码调试（ 可看这https://blog.csdn.net/u012763794/article/details/78457973 ）
3. 给gdb装上pwndbg和peda插件
4. 安装pwntools
5. 安装one_gadget
6. 下载libc-database

# Update

20200114：   最近在Ubuntu 19.04运行脚本，安装pwntools有问题，more-itertools已经不支持python2了，所以分成py2和py3版本，python2的解决方案是先安装支持python2的more-itertools 5.0.0

20181105：   竟然忘了安装one_gadget

20181027：   增加下载libc-database

20181003：   修改pip源为豆瓣源，加快pip的安装速度，假如安装的地方不在中国，可以注释掉！

20180606：   初始化仓库，上传第一版

# Attention

I suggest you modify the /etc/apt/sources.list file to speed up the download.

# Reward

paypal: https://www.paypal.me/giantbranch

![自愿打赏][1]


[1]: http://pic.giantbranch.cn/pic/1551450728861.jpg
