#!/bin/env bash

echo "ATTENTION: After a restore of the system from a snapshot, \
  comment out the lines that have the # above and below them and \
  run the snapper.sh"
#
sudo snapper create-config /
sudo systemctl enable --now grub-btrfsd.service
#

file="/etc/mkinitcpio.conf"
pattern="HOOKS=("
text_to_insert="grub-btrfs-overlayfs"

# Inserting text before the closing bracket in lines matching the pattern
sudo sed -i "/$pattern/s/)/ $text_to_insert&/" "$file"

sudo mkinitcpio -P
sudo grub-mkconfig -o /boot/grub/grub.cfg
