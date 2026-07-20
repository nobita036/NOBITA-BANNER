#!/data/data/com.termux/files/usr/bin/bash

source ~/NOBITA-BANNER/config.sh
clear

GREEN='\033[1;32m'
CYAN='\033[1;36m'
WHITE='\033[1;37m'
NC='\033[0m'

echo -e "${CYAN}"
figlet "$BANNER_NAME" | lolcat

echo -e "${WHITE}          Code • Create • Learn 🚀${NC}"
echo

echo -e "${GREEN}          Status : System Online ✓${NC}"
echo

echo -e "${GREEN}============================================"
echo -e " User    : $BANNER_NAME"
echo -e " Device  : $(getprop ro.product.model)"
echo -e " Android : $(getprop ro.build.version.release)"
echo -e " Date    : $(date '+%d-%b-%Y')"
echo -e " Time    : $(date '+%I:%M:%S %p')"
echo -e "============================================${NC}"

echo
echo -e "${WHITE}┌──[$BANNER_NAME]-[~]"
echo -e "└─>>> ${NC}"

echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

BAT=$(termux-battery-status 2>/dev/null | jq -r '.percentage' 2>/dev/null)
[ -z "$BAT" ] && BAT="N/A"

RAM=$(free -h | awk '/Mem:/ {print $3"/"$2}')
STO=$(df -h /data | awk 'NR==2 {print $3"/"$2}')

echo -e " Battery : ${BAT}%"
echo -e " RAM     : $RAM"
echo -e " Storage : $STO"

TEMP=$(termux-battery-status | jq -r '.temperature')
echo -e " Temp    : ${TEMP}°C"

CPU=$(getprop ro.soc.model)
[ -z "$CPU" ] && CPU=$(getprop ro.hardware)
[ -z "$CPU" ] && CPU="Unknown"

echo -e " CPU     : $CPU"

NET=$(getprop gsm.network.type)
[ -z "$NET" ] && NET="Unknown"

echo -e " Network: $NET"

IP=$(ifconfig 2>/dev/null | grep 'inet ' | grep -v '127.0.0.1' | awk '{print $2}' | head -1)
[ -z "$IP" ] && IP="N/A"

echo -e " IP      : $IP"

UPTIME=$(uptime -p)
echo -e " Uptime  : $UPTIME"

WIFI=$(termux-wifi-connectioninfo 2>/dev/null | jq -r '.ssid')
[ -z "$WIFI" ] && WIFI="N/A"

echo -e " WiFi    : $WIFI"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"

echo -e " Time    : $(date '+%I:%M:%S %p')"

BATTERY=$(termux-battery-status | jq -r '.percentage')
echo -e " Battery : ${BATTERY}%"
echo -e " Health  : $(termux-battery-status | jq -r '.health')"
