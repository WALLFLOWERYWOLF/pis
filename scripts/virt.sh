#!/bin/env bash

sudo sed -i '/unix_sock_group = "libvirt"/s/^#//' /etc/libvirt/libvirtd.conf
sudo sed -i '/unix_sock_rw_perms = "0770"/s/^#//' /etc/libvirt/libvirtd.conf
sudo echo 'log_filters="3:qemu 1:libvirt"' >> /etc/libvirt/libvirtd.conf
sudo echo 'log_outputs="2:file:/var/log/libvirt/libvirtd.log"' >> /etc/libvirt/libvirtd.conf
sudo usermod -a -G kvm,libvirt $(whoami)
sudo systemctl enable libvirtd
sudo systemctl start libvirtd
sudo echo 'user = "shantanu"'
sudo echo 'group = "shantanu"'
sudo systemctl restart libvirtd
sudo virsh net-autostart default
