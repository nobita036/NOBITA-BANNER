#!/data/data/com.termux/files/usr/bin/bash

echo "Installing NOBITA Banner..."

if [ -d "$HOME/NOBITA-BANNER" ]; then
    echo "NOBITA Banner already installed!"
else
    git clone https://github.com/nobita036/NOBITA-BANNER.git
fi

cd $HOME/NOBITA-BANNER

chmod +x banner.sh menu.sh

echo "NOBITA Banner Installed!"
echo "Run: bash ~/NOBITA-BANNER/banner.sh"
