#!/bin/env bash

flatpak remote-ls flathub | grep -i $@ | awk '{print $2}'
