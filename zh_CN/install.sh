#!/bin/bash
clear
echo "Timeshift BTRFS终端备份脚本安装程序 V1"
echo "----------核对清单----------"
echo "1.您是BTRFS"
echo "2.您的子卷结构应为@, @home等"
echo "3.您确定安装此脚本"
echo "--------确认[输入y]----------"
read yes
y=y
if [ $yes == $y ]; then
    echo "您是Debian(apt)还是Arch(pacman)? [debian/arch]"
    read pack
    a=debian
    b=arch
    if [ $pack == $a ]; then
        sudo apt install timeshift
    elif [ $pack == $b ]; then
        sudo pacman -S timeshift
    fi

    sudo cp -r menu /bin
    echo "----------安装完成----------"
fi
