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

# Install firefox developper
cat > ~/.local/share/applications/firefoxDeveloperEdition.desktop <<EOL
[Desktop Entry]
Encoding=UTF-8
Name=Firefox Developer Edition
Exec='/opt/firefox/firefox -private'
Icon=/opt/firefox/browser/chrome/icons/default/default128.png
Terminal=false
Type=Application
Categories=Network;WebBrowser;Favorite;
MimeType=text/html;text/xml;application/xhtml_xml;x-scheme-handler/http;x-scheme-handler/https;x-scheme-handler/ftp; X-Ayatana-Desktop-Shortcuts=NewWindow;NewIncognitos;
EOL

# Add to application
sudo apt install terminator

# install zsh and all plugins
sudo apt install git-core zsh
curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh
