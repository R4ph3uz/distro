#!/bin/bash
export TERM=xterm-256color
export PATH=/cybersec:~/opt:$PATH

sudo mkdir -p /cybersec/wordlists
sudo cp /usr/share/wordlists/rockyou.txt.gz /cybersec/wordlists

sudo cp ./bg/{blue-to-pink.jpg,blue-to-purple.jpg,orange-to-pink.jpg,purple-to-yellow.jpg} /usr/share/backgrounds/
