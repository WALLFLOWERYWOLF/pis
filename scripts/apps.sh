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
	retroarch
	mpv
	qbittorrent
	thunderbird
	obs-studio
	syncplay
	pamac
	droidcam
	inkscape
	krita
	darktable
	libreoffice-fresh
	aisleroit
	blender
	joplin
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
paru -S --noconfirm ${apps[*]}
