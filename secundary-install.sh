#! /bin/bash

sudo dnf install google-roboto-fonts google-roboto-mono-fonts;
sudo dnf copr enable tonyjames/plata-theme &;

sudo dnf install flatpak && flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo;

echo 'Installing Visual Studio Code........';
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc;
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo';
dnf check-update;
sudo dnf install code -y;


