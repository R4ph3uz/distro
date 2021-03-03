#!/bin/bash
# Download Firefox-developper
wget -O FirefoxSetup.tar.bz2 "https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=linux64&lang=fr"
sudo cp -rp FirefoxSetup.tar.bz2 /opt
sudo rm -rf FirefoxSetup.tar.bz2
cd /opt
sudo tar xjf FirefoxSetup.tar.bz2
sudo chown -R $USER /opt/firefox
export PATH=$PATH:/opt/firefox/firefox
cd ~

# Install Terminator
sudo apt install terminator

# Install zsh
sudo apt install git-core zsh
curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh

# install plugins for zsh
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Install Linpeas
cd /cybersec
curl https://raw.githubusercontent.com/carlospolop/privilege-escalation-awesome-scripts-suite/master/linPEAS/linpeas.sh > linpeas
chmod +x linpeas
cd ~

# Install Discord
cd ~/Downloads 
wget -O discord-0.0.1.deb https://discordapp.com/api/download?platform=linux&format=deb
sudo dpkg -i discord-0.0.1.deb
cd ~

# Install Disks
sudo apt install gnome-disk-utility

# Install Plank
sudo apt install plank

# Candy icons
mkdir ~/candy-icons && cd ~/candy-icons
git clone https://github.com/EliverLara/candy-icons.git

# install layan dark
cd ~/Downloads
sudo apt-get install gtk2-engines-murrine gtk2-engines-pixbuf
git clone https://github.com/vinceliuice/Layan-gtk-theme.git
cd Layan-gtk-theme
./install.sh
