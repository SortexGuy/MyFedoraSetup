#! /bin/bash
# Optimize dnf
echo 'fastestmirror=True' | sudo tee -a /etc/dnf/dnf.conf >/dev/null;
echo 'max_parallel_downloads=5' | sudo tee -a /etc/dnf/dnf.conf >/dev/null;
echo 'File: /etc/dnf/dnf.conf';
cat /etc/dnf/dnf.conf;
echo 'EOF';
echo 'Updating Fedora........';

# Update Fedora
sudo dnf update -y;

echo 'Installing XFCE4........';
# Install XFCE4 and chromium
sudo dnf install xorg-x11-server-Xorg xorg-x11-xinit network-manager-applet\
 xorg-x11-drv-libinput mesa-dri-drivers xfce4-panel xfce4-datetime-plugin\
 xfce4-session xfce4-settings xfce4-terminal xfconf xfdesktop\
 xfce4-appfinder xfce4-power-manager xfce4-pulseaudio-plugin pulseaudio\
 gvfs lightdm-gtk xfwm4 NetworkManager-wifi mousepad -y; # Required packages for XFCE desktop

echo 'Installing Chromium........';
sudo dnf install chromium -y; # Prefered Browser
echo 'Installing CLI stuff........';
sudo dnf install neofetch cmatrix htop -y; # Some CLI tools

echo 'Installing zsh........';
sudo dnf install zsh -y;

echo 'Setting up .XCompose........';
wget https://raw.githubusercontent.com/raelgc/win_us_intl/master/.XCompose &;
gsettings set org.gnome.settings-daemon.plugins.xsettings disabled-gtk-modules '["'keyboard'"]';
sudo yum -y install uim uim-gtk3;
imsettings-switch -q uim;

echo 'Installing Visual Studio Code........';
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc;
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo';
dnf check-update;
sudo dnf install code -y;



echo 'Enabling GUI Boot........';
# Enable GUI services
sudo systemctl enable lightdm; # Enable login using graphical interface
sudo systemctl set-default graphical.target; # Boot to graphical interface as default
echo 'Enabled GUI Boot'


