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

# Checks 'wget' is installed
apt-get install wget

# Installs browsers
apt-get install links midori
wget http://deb.opera.com/opera-developer/pool/non-free/o/opera-developer/opera-developer_25.0.1592.0_amd64.deb
dpkg -i opera-developer_25.0.1592.0_amd64.deb && apt-get -f install
rm *.deb
add-apt-repository ppa:ubuntu-mozilla-daily/firefox-aurora
apt-get update
apt-get install firefox
apt-get upgrade

# Installs ownCloud client
wget http://launchpadlibrarian.net/161423097/libowncloudsync0_1.5.0%2Bdfsg-4ubuntu1_amd64.deb
wget http://launchpadlibrarian.net/161423098/owncloud-client-cmd_1.5.0%2Bdfsg-4ubuntu1_amd64.deb
wget http://launchpadlibrarian.net/161423096/owncloud-client_1.5.0%2Bdfsg-4ubuntu1_amd64.deb
wget http://launchpadlibrarian.net/161423385/owncloud-client-doc_1.5.0%2Bdfsg-4ubuntu1_all.deb
wget http://launchpadlibrarian.net/161423388/owncloud-client-l10n_1.5.0%2Bdfsg-4ubuntu1_all.deb
dpkg -i owncloud-client-l10n_1.5.0+dfsg-4ubuntu1_all.deb && apt-get -f install
dpkg -i libowncloudsync0_1.5.0+dfsg-4ubuntu1_amd64.deb && apt-get -f install
dpkg -i owncloud-client-doc_1.5.0+dfsg-4ubuntu1_all.deb && apt-get -f install
dpkg -i owncloud-client_1.5.0+dfsg-4ubuntu1_amd64.deb && apt-get -f install
dpkg -i owncloud-client-cmd_1.5.0+dfsg-4ubuntu1_amd64.deb && apt-get -f install
rm *.deb

# Install and configure git
apt-get install git
git config --global user.name "Joshua Fogg"
git config --global user.email "joshua.h.fogg@gmail.com"
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=14400'

# Installs terminator
apt-get install terminator

# Installs office
apt-get install libreoffice
apt-get remove abiword
apt-get remove gnumeric

# Installs Steam
wget http://media.steampowered.com/client/installer/steam.deb
dpkg -i steam.deb && apt-get -f install
rm steam.deb
