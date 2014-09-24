#!/bin/bash

# This is my setup script for Ubuntu and i3.
# It goes on the assumption that a default
# installation has just happened from the
# mini ISO, with no additional packages set
# to be installed.

# Checks OS up to date
do-release-upgrade

# Initial updating
apt-get update
apt-get upgrade
apt-get dist-upgrade

# Graphical interface
apt-get install xinit
apt-get install i3
apt-get install i3lock
apt-get install conky

# Setting up sound
apt-get install alsa-base
apt-get install alsa-utils
apt-get install alsa-oss
apt-get install gstreamer0.10-alsa
apt-get install libasound2
apt-get install libasound2-plugins
alsactl init
apt-get install mplayer
apt-get install cmus

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

# Configuring i3
git clone https://github.com/Foggalong/.files.git
chown josh .files

# Basic apt commands
apt-get install software-properties-common

# Web-browser
apt-get install links
add-apt-repository ppa:ubuntu-mozilla-daily/firefox-aurora
apt-get update
apt-get install firefox

# Themeing
apt-get install lxappearance
add-apt-repository ppa:numix/ppa
apt-get update
apt-get install numix-gtk-theme
apt-get install numix-icon-theme-circle
apt-get install dmz-cursor-theme
