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
