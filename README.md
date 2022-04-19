# MyFedoraSetup
Just some scripts to install and setup Fedora XFCE

Based on: https://able.bio/KY64/minimal-installation-fedora-linux--73410e6d

To install and configure zsh: https://ivanaugustobd.medium.com/your-terminal-can-be-much-much-more-productive-5256424658e8


### To install nerd fonts:
```bash
mkdir ~/.fonts;
cd ~/.fonts;
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/JetBrainsMono.zip &;
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip;
unzip JetBrainsMono.zip;
unzip FiraCode.zip;
fc-cache -f -v;
cd;
```

### To install winbox:
```bash
cd /tmp;
git clone https://github.com/mriza/winbox-installer.git;
cd winbox-installer;
sudo bash winbox-setup install;
cd;
```

