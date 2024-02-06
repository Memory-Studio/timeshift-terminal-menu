#!/bin/bash
clear
echo "Timeshift BTRFS Backup Script Installer V1"
echo "-----Check your computer----"
echo "1.Your computer is BTRFS"
echo "2.Your B-tree structure should be @, @home......"
echo "-------Confirm[y]----------"
read yes
y=y
if [ $yes == $y ]; then
    echo "What's your computer system? [debian/arch]"
    read pack
    a=debian
    b=arch
    if [ $pack == $a ]; then
        sudo apt install timeshift
    elif [ $pack == $b ]; then
        sudo pacman -S timeshift
    fi

    sudo cp -r menu /bin
    echo "----Installation is complete----"
fi
