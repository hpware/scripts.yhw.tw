#!/bin/bash

echo Installing Stuff...
sudo dpkg --add-architecture i386 
echo Installing Chewing Python3 Docker Curl Wget Vim Snap Nmap Whois and Nvim
sudo apt install curl wget ibus-chewing python3 python3-pip docker.io docker-compose gnome-tweaks vim neovim snap nmap whois -y 
sudo mkdir -pm755 /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/noble/winehq-noble.sources
curl -s https://packagecloud.io/install/repositories/ookla/speedtest-cli/script.deb.sh | sudo bash
sudo apt update
echo Installing Wine
sudo apt install --install-recommends winehq-staging -y
sudo add-apt-repository universe
sudo apt install libfuse2t64 speedtest-cli -y
echo Download the Mullvad signing key
sudo curl -fsSLo /usr/share/keyrings/mullvad-keyring.asc https://repository.mullvad.net/deb/mullvad-keyring.asc
echo Add the Mullvad repository server to apt
echo "deb [signed-by=/usr/share/keyrings/mullvad-keyring.asc arch=$( dpkg --print-architecture )] https://repository.mullvad.net/deb/stable $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/mullvad.list
echo Installing the package
sudo apt update
sudo apt install mullvad-vpn -y
cd ~
curl https://desktop.line-scdn.net/win/new/LineInst.exe --output LineInst.exe
wine LineInst.exe
echo Installing Google Chrome
curl -L https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb --output GoogleChrome.deb
sudo dpkg -i GoogleChrome.deb
echo Installing Spotify, Discord, And VS Code
echo There is some issues with snap, please run sudo snap install discord , sudo snap install spotify , sudo snap install code --classic
echo Installed!
echo Running Speedtest
speedtest
