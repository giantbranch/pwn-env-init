# pwn-env-init

CTF PWN 做题环境一键搭建脚本

CTF PWN environment one-click build script

理论上适用于debian系的linux x64系统，但强烈建议在kali x64 ,Ubuntu x64系统上安装使用

**如果怕麻烦的，可以直接下载我配置好的Ubuntu 16.04，为VMware导出的ovf格式**

链接：https://pan.baidu.com/s/1Ia8NPcXy414QOaiH14T3sQ 
提取码：kypa 

**账号密码：** giantbranch:giantbranch

截图：

![](https://raw.githubusercontent.com/giantbranch/pwn-env-init/master/img/png.png)

**虚拟机下载的源码不能源码调试有bug，可通过一下命令修复：**

```
rm glibc-2.23* -rf
sudo apt update
sudo apt source libc6-dev
```

# Use

```
wget https://raw.githubusercontent.com/giantbranch/pwn-env-init/master/pwn_init.sh
chmod +x pwn_init.sh
sudo ./pwn_init.sh
```

# Instructions

1. 为64位系统提供32位运行环境支撑
2. 下载了libc6的源码，方便源码调试（ 可看这https://blog.csdn.net/u012763794/article/details/78457973 ）
3. 给gdb装上pwndbg和peda插件
4. 安装pwntools
5. 安装one_gadget
6. 下载libc-database

# Update

20181105：   竟然忘了安装one_gadget

20181027：   增加下载libc-database

20181003：   修改pip源为豆瓣源，加快pip的安装速度

# Attention

I suggest you modify the /etc/apt/sources.list file to speed up the download.
