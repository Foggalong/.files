#!/bin/bash

# This is a simple setup script

# Checks for latest version of the operating system. If it returns yes then
# it will install but this script will have to be run again post-install
do-release-upgrade

# Initial update
apt-get update
apt-get upgrade
apt-get dist-upgrade
apt-get autoremove

# Install and configure git
apt-get install git
git config --global user.name "Joshua Fogg"
git config --global user.email "joshua.h.fogg@gmail.com"
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=14400'

# Checks 'wget' is installed
apt-get install wget

# Installs ownCloud client
wget http://launchpadlibrarian.net/161423097/libowncloudsync0_1.5.0%2Bdfsg-4ubuntu1_amd64.deb
wget http://launchpadlibrarian.net/161423098/owncloud-client-cmd_1.5.0%2Bdfsg-4ubuntu1_amd64.deb
wget http://launchpadlibrarian.net/161423096/owncloud-client_1.5.0%2Bdfsg-4ubuntu1_amd64.deb
wget http://launchpadlibrarian.net/161423385/owncloud-client-doc_1.5.0%2Bdfsg-4ubuntu1_all.deb
wget http://launchpadlibrarian.net/161423388/owncloud-client-l10n_1.5.0%2Bdfsg-4ubuntu1_all.deb
dpkg -i owncloud-client-l10n_1.5.0+dfsg-4ubuntu1_all.deb
dpkg -i libowncloudsync0_1.5.0+dfsg-4ubuntu1_amd64.deb
dpkg -i owncloud-client-doc_1.5.0+dfsg-4ubuntu1_all.deb
dpkg -i owncloud-client_1.5.0+dfsg-4ubuntu1_amd64.deb
dpkg -i owncloud-client-cmd_1.5.0+dfsg-4ubuntu1_amd64.deb
