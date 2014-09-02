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

# Installs i3
apt-get install xinit
apt-get install i3
apt-get install i3lock
apt-get install conky

# Installs audio
apt-get install alsa-base
apt-get install alsa-utils
apt-get install alsa-oss
apt-get install gstreamer0.10-alsa
apt-get install libasound2
apt-get install libasound2-plugins
alsactl init

# Installs terminal
apt-get install terminator

# Checks 'wget' is installed
apt-get install wget

# Installs plank
# add-apt-repository ppa:ricotz/docky
# apt-get update
# apt-get install plank

# Updates whisker menu
# add-apt-repository ppa:gottcode/gcppa
# apt-get update
# apt-get install xfce4-whiskermenu-plugin

# Installs browsers
apt-get install links
wget http://deb.opera.com/opera-developer/pool/non-free/o/opera-developer/opera-developer_25.0.1592.0_amd64.deb
dpkg -i opera-developer_25.0.1592.0_amd64.deb && apt-get -f install
rm *.deb
add-apt-repository ppa:ubuntu-mozilla-daily/firefox-aurora
apt-get update
apt-get install firefox
apt-get upgrade

# Installs email
apt-get install thunderbird

# Installs ownCloud client
apt-get install owncloud-client

# Install and configure git
apt-get install git
git config --global user.name "Joshua Fogg"
git config --global user.email "joshua.h.fogg@gmail.com"
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=14400'

# Installs office
apt-get install libreoffice
apt-get install myspell-en-gb

# Installs music
apt-get install rhythmbox
apt-get install cmus

# Installs video
apt-get install vlc
add-apt-repository ppa:mc3man/trusty-media
apt-get update
apt-get install gstreamer0.10-ffmpeg
# install minitube-ubuntu from usc

# Installs chat
apt-get install pidgin
apt-get install hexchat

# Install text editors
apt-get install vim
add-apt-repository ppa:webupd8team/sublime-text-3
apt-get update
apt-get install sublime-text-installer

# Installs torrent
apt-get install transmission-gtk
mkdir /home/josh/Downloads/Torrents

# Installs maths stuff
apt-get install texmaker
apt-get install octave
apt-get install stellarium
apt-get install geogebra

# Allsorted
apt-get install tellico
apt-get install tint
apt-get install ppa-purge
apt-get install gdebi

# Installs Steam
wget http://media.steampowered.com/client/installer/steam.deb
dpkg -i steam.deb && apt-get -f install
rm steam.deb

# Sets up notes
rm -rf /home/josh/.local/share/notes/Notes
ln -s -r /home/josh/ownCloud/Notes/ /home/josh/.local/share/notes

# Sets up Music
rm -rf /home/josh/Music
ln -s -r /home/josh/ownCloud/music/ /home/josh/Music

# Sets up Documents
ln -s -r /home/josh/ownCloud/documents/ /home/josh/Documents/Synced

# Sets up Programs
mkdir /home/josh/Programs

# Sets up Web
cd /home/josh/Programs
mkdir Web && cd Web
git clone https://github.com/Foggalong/fogg.me.uk.git
git clone https://github.com/Foggalong/foggalong.github.io.git
git clone https://github.com/numixproject/numixproject.github.io.git

# Sets up Icons
cd /home/josh/Programs
mkdir Icons && cd Icons
# Sets up Numix
mkdir Numix && cd Numix
mkdir Desktop && cd Desktop
git clone https://github.com/numixproject/numix-folders.git
git clone https://github.com/numixproject/numix-icon-theme.git
git clone https://github.com/numixproject/numix-icon-theme-circle.git
git clone https://github.com/numixproject/numix-icon-theme-bevel.git
git clone https://github.com/numixproject/numix-icon-theme-utouch.git
git clone https://github.com/numixproject/numix-icon-theme-shine.git
git clone https://gitlab.com/numix/numix-icon-theme-hexagon.git
git clone https://gitlab.com/numix/icon-theme-fold.git
git clone https://gitlab.com/numix/numix-icon-theme-cookie.git
git clone https://gitlab.com/numix/numix-icon-theme-square.git
ln -s -r numix-icon-theme/Numix/ /usr/share/icons/
ln -s -r numix-icon-theme-circle/Numix-Circle/ /usr/share/icons/
ln -s -r numix-icon-theme-bevel/Numix-Bevel/ /usr/share/icons/
ln -s -r numix-icon-theme-utouch/Numix-uTouch/ /usr/share/icons/
ln -s -r numix-icon-theme-shine/Numix-Shine/ /usr/share/icons/
ln -s -r numix-icon-theme-hexagon/Numix-Hexagon/ /usr/share/icons/
ln -s -r numix-icon-theme-cookie/Numix-Cookie/ /usr/share/icons/
ln -s -r numix-icon-theme-square/Numix-Square/ /usr/share/icons/
cd ../ && mkdir Android && cd Android
git clone https://github.com/numixproject/com.numix.icons_circle.git
git clone https://gitlab.com/numix/com-numix-icons_hexagon.git
git clone https://gitlab.com/numix/com-numix-icons_square.git
git clone https://gitlab.com/numix/fold-for-android.git
cd ../
git clone https://gitlab.com/numix/script-o-mighty.git
git clone https://github.com/numixproject/numix-labs.git
git clone https://github.com/numixproject/numix-wiki.git
git clone https://github.com/numixproject/numix-tools.git
git clone https://github.com/numixproject/numix-assets.git
cd ../
# Sets up Moka
mkdir Moka && cd Moka
git clone https://github.com/moka-project/moka-icon-theme.git
git clone https://github.com/moka-project/faba-icon-theme.git
ln -s -r moka-icon-theme/Moka/ /usr/share/icons
ln -s -r faba-icon-theme/Faba/ /usr/share/icons
cd ../
# Sets up Nitrux
mkdir Nitrux && cd Nitrux
git clone https://github.com/NitruxSA/flattr-icons.git
ln -s -r flattr-icons /usr/share/icons
cd ../
cd ../

# Sets up GTK
add-apt-repository ppa:numix/ppa
apt-get update
apt-get install numix-gtk-theme

# Icons tools
apt-get install numix-tools
apt-get install librsvg2-2
apt-get install librsvg2-bin
apt-get install librsvg2-common
apt-get install librsvg2-doc
apt-get install python-rsvg
add-apt-repository ppa:svg-cleaner-team/svgcleaner
apt-get update
apt-get install svgcleaner
apt-get install inkscape
apt-get install gimp
apt-get install mtpaint

# Sets up .files
apt-get install conky
cd /home/josh/
git clone https://github.com/Foggalong/.files.git
ln -s .files/conkyrc .conkyrc
ln -s .files/bashrc .bashrc
source ~/.bashrc
full-upgrade
