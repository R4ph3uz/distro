#!/bin/bash
export TERM=xterm-256color
export PATH=/cybersec:~/opt:$PATH

sudo mkdir -p /cybersec/wordlists
sudo cp /usr/share/wordlists/rockyou.txt.gz /cybersec/wordlists

sudo cp ./bg/{blue-to-pink.jpg,blue-to-purple.jpg,orange-to-pink.jpg,purple-to-yellow.jpg} /usr/share/backgrounds/

sudo echo "Name[fr]=Terminator
Comment[fr]=Permet d'avoir plusieurs terminaux en une seule fenêtre
TryExec=terminator
Exec=terminator
Icon=/usr/share/icons/maia/apps/scalable/terminator-128.svg
Type=Application
Categories=GNOME;GTK;Utility;TerminalEmulator;System;
StartupNotify=true
X-Ubuntu-Gettext-Domain=terminator
X-Ayatana-Desktop-Shortcuts=NewWindow;
Keywords=terminal;shell;prompt;command;commandline;
[NewWindow Shortcut Group]
Name=Open a New Window
Exec=terminator
TargetEnvironment=Unity
" > /usr/share/applications/terminator.desktop
