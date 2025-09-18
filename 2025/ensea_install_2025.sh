#!/bin/bash
sudo apt update && sudo apt upgrade -y
sudo apt install -y git build-essential cmake gdb curl wget apt-transport-https software-properties-common
sudo apt install -y python3 python3-pip python3-venv
sudo snap install code --classic
sudo snap install intellij-idea-community --classic
sudo snap install pycharm-community --classic
sudo apt install -y docker.io
sudo systemctl enable docker
sudo usermod -aG docker $USER
sudo apt install -y virtualbox virtualbox-ext-pack
sudo snap install rpi-imager
sudo DEBIAN_FRONTEND=noninteractive apt install -y wireshark net-tools
sudo usermod -aG wireshark $USER
sudo add-apt-repository -y ppa:kicad/kicad-9.0-releases
sudo apt update
sudo apt install -y kicad
sudo dpkg --add-architecture i386
sudo mkdir -pm755 /etc/apt/keyrings
wget -nc https://dl.winehq.org/wine-builds/winehq.key -O- | sudo gpg --dearmor -o /etc/apt/keyrings/winehq-archive.key
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/noble/winehq-noble.sources
sudo apt update
sudo apt install -y --install-recommends winehq-stable
mkdir -p ~/LTspice
cd ~/LTspice
wget -O LTspice.exe "https://ltspice.analog.com/software/LTspice64.exe"
wine LTspice.exe /S
sudo apt install -y octave filezilla libreoffice texlive texlive-latex-extra texlive-fonts-recommended texlive-science minicom vlc
URL="https://enseafr-my.sharepoint.com/:u:/g/personal/nicolas_papazoglou_ensea_fr/EXGfC4KxVctHvRJ6-mY26iIB7KPD5wzJnHwkJpNDQ4Uxfw?e=3z3ypf"
TMP="/tmp/stm32cubeide.deb_bundle.sh"
curl -L -o "$TMP" "$URL"
chmod +x "$TMP"
sudo bash "$TMP"