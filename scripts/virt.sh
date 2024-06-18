#!/bin/env bash

sudo sed -i '/unix_sock_group = "libvirt"/s/^#//' /etc/libvirt/libvirtd.conf
sudo sed -i '/unix_sock_rw_perms = "0770"/s/^#//' /etc/libvirt/libvirtd.conf
echo 'log_filters="3:qemu 1:libvirt"' | sudo tee -a /etc/libvirt/libvirtd.conf
echo 'log_outputs="2:file:/var/log/libvirt/libvirtd.log"' | sudo tee -a /etc/libvirt/libvirtd.conf
sudo usermod -a -G kvm,libvirt $(whoami)
sudo systemctl enable libvirtd
sudo systemctl start libvirtd
echo 'user = "shantanu"' | sudo tee -a /etc/libvirt/libvirtd.conf
echo 'group = "shantanu"' | sudo tee -a /etc/libvirt/libvirtd.conf
sudo systemctl restart libvirtd
sudo virsh net-autostart default
