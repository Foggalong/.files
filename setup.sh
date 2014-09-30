#!/bin/bash


# Basic Functions
# ===============

function aptINS() {
	apt-get -y install "$1"
}

function aptREM() {
	apt-get -y remove "$1"
}

function aptPPA() {
	add-apt-repository -y "$1"
	apt-get update
}

# Pre-flight Checks
# =================

# Checks OS up to date
do-release-upgrade

# Check existing packages up to date
apt-get update
apt-get upgrade
apt-get dist-upgrade


# Installing Programs
# ===================

# Basic apt commands
aptINS software-properties-common
aptINS git
aptINS wget
aptINS gdebi

# Setting up sound
aptINS alsa-base
aptINS alsa-utils
aptINS alsa-oss
aptINS gstreamer0.10-alsa
aptINS libasound2
aptINS libasound2-plugins
alsactl init

# Graphics Drivers
apt-get install linux-headers-generic
apt-get install nvidia-current
apt-get install nvidia-settings

# General
aptINS xinit

# i3
aptINS i3
aptINS i3lock

# XFCE
aptINS xubuntu-desktop
aptPPA ppa:gottcode/gcppa
aptINS xfce4-whiskermenu-plugin

# Plank
# Installs plank
aptPPA ppa:ricotz/docykr
aptINS plank

# Web-browsers
aptINS links
aptPPA ppa:ubuntu-mozilla-daily/firefox-aurora
aptINS firefox

# Media Players
aptINS mplayer
aptINS cmus
aptINS rhythmbox
aptINS vlc
aptINS transmission-gtk
aptPPA ppa:mc3man/trusty-media
aptINS gstreamer0.10-ffmpeg
aptREM parole
aptREM gmusicbrowser
aptREM xnoise

# Office Programs
aptINS libreoffice
aptINS myspell-en-gb
aptINS texmaker
aptREM abiword
aptREM gnumeric

# Command Line
aptINS terminator
aptINS vim
aptINS tree
aptINS htop
aptINS sl

# Sublime Text
aptPPA ppa:webupd8team/sublime-text-3
aptINS sublime-text-installer

# Numix Stuff
aptPPA ppa:numix/ppa
aptINS numix-gtk-theme
aptINS numix-icon-theme-circle
aptINS dmz-cursor-theme

# Games
aptINS steam
aptINS tint
aptINS ninvaders
aptINS pacman4console
aptINS greed
aptINS pioneers
aptINS pychess
touch /var/games/tint.scores
chown $USER:$USER /var/games/tint.scores


# Configuration
# -------------

# Directories
mkdir Programs
chown josh Programs
rm -r Templates
rm -r Public

# .files
git clone https://github.com/Foggalong/.files.git
chown josh .files

# Program symlinks
ln -s -f .files/hardcode-fixer/fix.sh /usr/bin/hardcode-fixer
ln -s -f .files/pipes.sh/pipes.sh /usr/bin/pipes
ln -s -f .files/info.sh/info.sh /usr/bin/info.sh

# Config symlinks
ln -s -f .files/config/bashrc .bashrc
ln -s -f .files/config/gitconfig .config
ln -s -f .files/config/transmission/*.json .config/transmission/