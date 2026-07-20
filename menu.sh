#!/data/data/com.termux/files/usr/bin/bash

clear

source config.sh

while true; do
clear
echo "=================================="
echo "       NOBITA BANNER TOOL"
echo "=================================="
echo
echo "Current Name : $BANNER_NAME"
echo
echo "[1] Change Banner Name"
echo "[2] Preview Banner"
echo "[3] Exit"
echo
read -p "Select: " op

case $op in
1)
read -p "New Banner Name: " newname
echo "export BANNER_NAME=\"$newname\"" > config.sh
echo "Saved!"
sleep 1
;;
2)
bash banner.sh
read -p "Press Enter..."
;;
3)
exit
;;
*)
echo "Invalid Option!"
sleep 1
;;
esac
done
