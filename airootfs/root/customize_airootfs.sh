#!/bin/bash

set -e -u

sed -i 's/#\(en_US\.UTF-8\)/\1/' /etc/locale.gen
locale-gen

ln -sf /usr/share/zoneinfo/UTC /etc/localtime

usermod -s /usr/bin/zsh root
cp -aT /etc/skel/ /root/
chmod 700 /root

sed -i 's/#\(PermitRootLogin \).\+/\1yes/' /etc/ssh/sshd_config
sed -i 's/#\(Storage=\)auto/\1volatile/' /etc/systemd/journald.conf
head -n -5 /etc/pacman.conf > /etc/pacman.conf.new
mv /etc/pacman.conf.new /etc/pacman.conf

sed -i 's/#\(HandleSuspendKey=\)suspend/\1ignore/' /etc/systemd/logind.conf
sed -i 's/#\(HandleHibernateKey=\)hibernate/\1ignore/' /etc/systemd/logind.conf
sed -i 's/#\(HandleLidSwitch=\)suspend/\1ignore/' /etc/systemd/logind.conf

systemctl enable pacman-init.service
systemctl enable NetworkManager.service
systemctl set-default multi-user.target

rm -f /etc/securetty /usr/share/factory/etc/securetty
