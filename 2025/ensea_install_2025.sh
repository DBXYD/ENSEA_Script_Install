#!/bin/bash
echo "=== Mise à jour du système ==="
sudo apt update && sudo apt upgrade -y

echo "=== Installation des outils de base ==="
sudo apt install -y git build-essential cmake gdb curl wget apt-transport-https software-properties-common

echo "=== Installation de Python 3 et outils ==="
sudo apt install -y python3 python3-pip python3-venv

echo "=== Installation de VSCode ==="
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt update && sudo apt install -y code
rm microsoft.gpg

echo "=== Installation de STM32CubeIDE ==="
STM32_URL=$(curl -s https://www.st.com/en/development-tools/stm32cubeide.html | grep -Eo 'https://.*linux_amd64\.sh' | head -n 1)
if [ -z "$STM32_URL" ]; then
    echo "⚠️ Impossible de récupérer l’URL de STM32CubeIDE automatiquement. À installer manuellement."
else
    wget "$STM32_URL" -O stm32cubeide.sh
    chmod +x stm32cubeide.sh
    sudo ./stm32cubeide.sh --mode unattended
    rm stm32cubeide.sh
fi

echo "=== Installation IntelliJ et PyCharm (Community) ==="
sudo snap install intellij-idea-community --classic
sudo snap install pycharm-community --classic

echo "=== Installation de Docker ==="
sudo apt install -y docker.io
sudo systemctl enable docker
sudo usermod -aG docker $USER

echo "=== Installation de VirtualBox ==="
sudo apt install -y virtualbox virtualbox-ext-pack

echo "=== Installation de RPi Imager ==="
sudo snap install rpi-imager

echo "=== Installation de Wireshark et net-tools ==="
sudo DEBIAN_FRONTEND=noninteractive apt install -y wireshark net-tools
sudo usermod -aG wireshark $USER

echo "=== Installation de KiCad ==="
sudo add-apt-repository -y ppa:kicad/kicad-7.0-releases
sudo apt update
sudo apt install -y kicad

echo "=== Installation de Wine (pour LTspice) ==="
sudo dpkg --add-architecture i386
sudo mkdir -pm755 /etc/apt/keyrings
wget -nc https://dl.winehq.org/wine-builds/winehq.key -O- | sudo gpg --dearmor -o /etc/apt/keyrings/winehq-archive.key
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/noble/winehq-noble.sources
sudo apt update
sudo apt install -y --install-recommends winehq-stable

echo "=== Installation de LTspice via Wine ==="
mkdir -p ~/LTspice
cd ~/LTspice
wget -O LTspice.exe "https://ltspice.analog.com/software/LTspice64.exe"
wine LTspice.exe /S  # /S = silent install

echo "=== Onshape : pas d’installation nécessaire (utiliser navigateur) ==="

echo "=== Installation de GNU Octave ==="
sudo apt install -y octave

echo "=== Installation de FileZilla ==="
sudo apt install -y filezilla

echo "=== Installation de LibreOffice ==="
sudo apt install -y libreoffice

echo "=== Installation de LaTeX (base) ==="
sudo apt install -y texlive texlive-latex-extra texlive-fonts-recommended texlive-science

echo "=== Installation de Minicom ==="
sudo apt install -y minicom

echo "=== Installation de VLC ==="
sudo apt install -y vlc

echo "=== Installation terminée ! Redémarre ta session pour activer Docker et Wireshark sans sudo. ==="
