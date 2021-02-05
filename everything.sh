#!/bin/bash
sudo apt update
sudo apt full-upgrade
# Upgrade everythong
wget -O FirefoxSetup.tar.bz2 "https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=linux64&lang=fr"
sudo cp -rp FirefoxSetup.tar.bz2 /opt
sudo rm -rf FirefoxSetup.tar.bz2
cd /opt
sudo tar xjf FirefoxSetup.tar.bz2
sudo chown -R $USER /opt/firefox
export PATH=$PATH:/opt/firefox/firefox
# install firefox developper
cat > ~/.local/share/applications/firefoxDeveloperEdition.desktop <<EOL
[Desktop Entry]
Encoding=UTF-8
Name=Firefox Developer Edition
Exec=/opt/firefox/firefox
Icon=/opt/firefox/browser/chrome/icons/default/default128.png
Terminal=false
Type=Application
Categories=Network;WebBrowser;Favorite;
MimeType=text/html;text/xml;application/xhtml_xml;x-scheme-handler/http;x-scheme-handler/https;x-scheme-handler/ftp; X-Ayatana-Desktop-Shortcuts=NewWindow;NewIncognitos;
EOL
# Add to application
sudo apt install terminator
# install terminator
sudo apt install git-core zsh
curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh
# install zsh and all plugins
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
chsh $(which zsh)
echo 'you have to :'
echo '- add firefox dev to pannel'
echo '- add terminator to pannel'
echo '- nano ~/.zshrc and modify: ZSH_THEME="powerlevel10k/powerlevel10k" and plugins=( git zsh-syntax-highlighting zsh-autosuggestions )'

echo "- source ~/.zshrc"
