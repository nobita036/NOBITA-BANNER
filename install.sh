#!/data/data/com.termux/files/usr/bin/bash

echo "Installing NOBITA Banner..."

cd $HOME

git clone https://github.com/nobita036/NOBITA-BANNER.git

cd NOBITA-BANNER

chmod +x banner.sh menu.sh

echo "NOBITA Banner Installed!"
echo "Run: bash ~/NOBITA-BANNER/banner.sh"
