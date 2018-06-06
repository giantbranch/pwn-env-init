# pwn-env-init

CTF PWN 做题环境一键搭建脚本

CTF PWN environment one-click build script

理论上适用于debian系的linux x64系统，但强烈建议在kali x64 2017.1以上运行


# Use

```
wget https://raw.githubusercontent.com/giantbranch/pwn-env-init/master/pwn_init.sh
chmod +x pwn_init.sh
./pwn_init.sh
```

# Instructions

1. 为64位系统提供32位运行环境支撑
2. 下载了libc6的源码，方便源码调试（可看这https://blog.csdn.net/u012763794/article/details/78457973）
3. 给gdb装上pwndbg和peda插件
4. 安装pwntools