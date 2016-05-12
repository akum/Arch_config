#!/bin/bash

gitf="$HOME/Arch_config"
lbin="/usr/local/bin"
service="systemd/system"

cp ~/.bashrc     $gitf/
cp ~/.gtkrc-2.0  $gitf/
cp ~/.Xresources $gitf/

cp ~/.config/i3/config    $gitf/.config/i3/
cp ~/.i3blocks.conf       $gitf/
cp ~/.config/compton.conf $gitf/.config/
cp ~/.config/cmus/rc      $gitf/.config/cmus/

cp /usr/lib/i3blocks/simplecal $gitf/usr/lib/i3blocks/
cp /usr/lib/i3blocks/music     $gitf/usr/lib/i3blocks/

cp /etc/default/grub            $gitf/etc/default/
cp /etc/plymouth/plymouthd.conf $gitf/etc/plymouth/
cp /etc/mkinitcpio.conf         $gitf/etc/
cp /etc/$service/lock.service   $gitf/etc/$service/

cp $lbin/togglebluetooth.sh $gitf/bin/
cp $lbin/toggletouchpad.sh $gitf/bin/

pacman -Qqe > $gitf/package_list.txt
