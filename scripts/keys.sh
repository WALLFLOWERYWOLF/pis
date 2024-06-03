#!/bin/env bash

#get and setup the ssh keys

echo "Setting up ssh keys"
echo "Copying the ssh keys from source"
sudo mount /dev/sda1 /home/shantanu/Desktop
cp -r /home/shantanu/Desktop/seagoat/ubac/imp/.ssh ~/
sudo umount /dev/sda1
echo "Setting up ssh keys permissions"
chmod 700 ~/.ssh
chmod 644 ~/.ssh/id_ed25519.pub
chmod 600 ~/.ssh/id_ed25519
