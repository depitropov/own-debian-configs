#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

${DIR}/apt_install_no_gui.sh

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | \
  sudo apt-key add -

sudo rm /etc/apt/sources.list.d/sublime-text.list
echo "deb https://download.sublimetext.com/ apt/stable/" | \
  sudo tee /etc/apt/sources.list.d/sublime-text.list

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | \
  sudo apt-key add -

rm /etc/apt/sources.list.d/google-chrome.list
echo "deb http://dl.google.com/linux/chrome/deb/ stable main" | \
  sudo tee /etc/apt/sources.list.d/google-chrome.list

sudo apt-get update

sudo -H apt-get -y install sublime-text-installer
sudo -H apt-get -y install google-chrome-beta
sudo -H apt-get -y install slack-desktop

sudo -H apt-get -y install ttf-dejavu-core glogg xbacklight kate \
 handbrake psensor parcellite gwenview kdiff3 \
 shutter pgadmin3 libreoffice gpick spotify-client font-manager
