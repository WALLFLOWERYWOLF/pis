#!/bin/env bash

apps=(
	ntfs-3g
	btrfsmaintenance
	snapper
	btrfs-assistant
	snap-pac
	inotify-tools
	grub-btrfs
	zsh
	neovim
	wezterm
	whois
	curl
	tmux
	hyprland
	hyprpaper
	hyprlock
	waybar
	wofi
	dolphin
	npm
	pnpm
	yt-dlp
	ytfzf
	youtube-dl
	xdman
	telegram-desktop
	discord
	podman
	distrobox
	boxbuddy
	qemu-full
	virt-manager
	cachyos-gaming-meta
	gnome-games-meta
	retroarch
	mpv
	qbittorrent
	thunderbird
	obs-studio
	syncplay
	octopi
	pamac
	droidcam
	inkscape
	krita
	pinta
	darktable
	libreoffice-fresh
	blender
	joplin-desktop
	obsidian
	celluloid
	discover
	k3b
	firefox
	flatpak
)

flatpaks=(
	net.pcsx2.PCSX2
)

#installing apps and shell
echo "Installing Apps and Shell"
for app in ${apps[@]}; do
	paru -S --noconfirm $app
done
for flatpak in ${flatpaks[@]}; do
	flatpak install flathub $flatpak
done
