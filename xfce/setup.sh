#!/bin/bash

# This is my setup script for Ubuntu and xfce.
# It goes on the assumption that a default
# Xubuntu installation has just happened from
# either the mini ISO, with no extra packages
# set to be installed, or from an Xubuntu ISO.

# Checks OS up to date
do-release-upgrade

# Initial updating
apt-get update
apt-get upgrade
apt-get dist-upgrade

# Graphics Drivers
apt-get install linux-headers-generic
apt-get install nvidia-current
apt-get install nvidia-settings

# Programming Setup
mkdir Programs && chown josh Programs
apt-get install git
apt-get install terminator
apt-get install vim
apt-get install tree
apt-get install htop
apt-get install sl

# Basic Setup
git clone https://github.com/Foggalong/.files.git
chown josh .files

# Basic software commands
apt-get install software-properties-common
apt-get install wget
apt-get install gdebi

# Web-browser
apt-get install links
add-apt-repository ppa:ubuntu-mozilla-daily/firefox-aurora
apt-get update
apt-get install firefox
apt-get upgrade
wget http://deb.opera.com/opera-developer/pool/non-free/o/opera-developer/opera-developer_25.0.1606.0_amd64.deb

# Themeing
add-apt-repository ppa:numix/ppa
apt-get update
apt-get install numix-gtk-theme

# Installs plank
add-apt-repository ppa:ricotz/docykr
apt-get update
apt-get install plank

# Updates whisker menu
add-apt-repository ppa:gottcode/gcppa
apt-get update
apt-get install xfce4-whiskermenu-plugin

# Installs email
apt-get install thunderbird

# Installs ownCloud client
apt-get install owncloud-client

# Installs office
apt-get install libreoffice
apt-get install myspell-en-gb
apt-get remove abiword
apt-get remove gnumeric

# Installs video
apt-get install vlc
add-apt-repository ppa:mc3man/trusty-media
apt-get update
apt-get install gstreamer0.10-ffmpeg
apt-get remove parole
