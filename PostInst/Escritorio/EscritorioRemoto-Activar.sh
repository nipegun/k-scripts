#!/bin/bash

sudo apt -y update
sudo apt -y install xrdp
sudo apt -y install xfce4-goodies

echo "xfce4-session" > ~/.xsession

sudo systemctl enable xrdp --now

chmod 600 ~/.xsession

