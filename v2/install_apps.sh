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

cd /cybersec
curl https://raw.githubusercontent.com/carlospolop/privilege-escalation-awesome-scripts-suite/master/linPEAS/linpeas.sh > linpeas
chmod +x linpeas
cd ~
