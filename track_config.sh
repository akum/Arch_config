#!/bin/bash

git_folder="$HOME/Arch_config"
local_bin="/usr/local/bin"
service="systemd/system"

cp ~/.toprc         $git_folder/
cp ~/.bashrc        $git_folder/
cp ~/.gtkrc-2.0     $git_folder/
cp ~/.Xresources    $git_folder/
cp ~/.i3blocks.conf $git_folder/

cp ~/.config/cmus/rc      $git_folder/.config/cmus/
cp ~/.config/i3/config    $git_folder/.config/i3/
cp ~/.config/compton.conf $git_folder/.config/

cp /usr/lib/i3blocks/cmus       $git_folder/usr/lib/i3blocks/
cp /usr/lib/i3blocks/vol        $git_folder/usr/lib/i3blocks/
cp /usr/lib/i3blocks/batt       $git_folder/usr/lib/i3blocks/
cp /usr/lib/i3blocks/simplecal  $git_folder/usr/lib/i3blocks/
cp /usr/lib/i3blocks/brightness $git_folder/usr/lib/i3blocks/

cp /etc/default/grub               $git_folder/etc/default/
cp /etc/mkinitcpio.conf            $git_folder/etc/
cp /etc/$service/lock.service      $git_folder/etc/$service/
cp /etc/lightdm/lightdm-gtk-*.conf $git_folder/etc/lightdm/

cp $local_bin/toggletouchpad.sh  $git_folder/bin/
cp $local_bin/togglebluetooth.sh $git_folder/bin/

~/.atom/styles.less $git_folder/.atom/
~/.atom/keymap.cson $git_folder/.atom/
~/.atom/config.cson $git_folder/.atom/
~/.atom/packages $git_folder/.atom/

pacman -Qqe > $git_folder/package_list.txt
