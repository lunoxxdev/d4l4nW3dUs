#INSTALL UPDATE 
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
###########- COLOR CODE -##############
colornow=$(cat /etc/hokagevpn/theme/color.conf)
NC="\e[0m"
RED="\033[0;31m" 
COLOR1="$(cat /etc/hokagevpn/theme/$colornow | grep -w "TEXT" | cut -d: -f2|sed 's/ //g')"
COLBG1="$(cat /etc/hokagevpn/theme/$colornow | grep -w "BG" | cut -d: -f2|sed 's/ //g')"                    
###########- END COLOR CODE -##########

cd /usr/bin/

rm menu
rm running
rm usernew
rm restart
rm m-system
rm m-ssws
rm info.sh
rm index.html
rm add-tr
rm m-trojan
rm sstpmenu
rm m-vmess
rm m-vless

echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1│${NC} ${COLBG1}    • DOWNLOAD & INSTALL UPDATE •              ${NC} $COLOR1│$NC"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
echo -e " [INFO] Downloading Update File"
sleep 2

wget -O menu "https://raw.githubusercontent.com/hokagelegend2023/vpnpremium/main/menu/menu.sh"
wget -O running "https://raw.githubusercontent.com/hokagelegend2023/vpnpremium/main/menu/running.sh"
wget -O restart "https://raw.githubusercontent.com/hokagelegend2023/vpnpremium/main/menu/restart.sh"
wget -O m-system "https://raw.githubusercontent.com/hokagelegend2023/vpnpremium/main/menu/m-system.sh"
wget -O m-ssws "https://raw.githubusercontent.com/hokagelegend2023/vpnpremium/main/menu/m-ssws.sh"
wget -O info "https://raw.githubusercontent.com/hokagelegend2023/vpnpremium/main/update/info.sh" 
wget -O add-tr "https://raw.githubusercontent.com/hokagelegend2023/alpha3/main/xray/menu-trojan.sh"
wget -O sstpmenu "https://raw.githubusercontent.com/hokagelegend2023/vpnpremium/main/menu/sstpmenu.sh"
wget -O menu-backup "https://raw.githubusercontent.com/hokagelegend2023/vpnpremium/main/backup/menu-backup.sh"
wget -O menutheme "https://raw.githubusercontent.com/hokagelegend2023/vpnpremium/main/update/menutheme.sh"
wget -O pptpmenu "https://raw.githubusercontent.com/hokagelegend2023/vpnpremium/main/menu/pptpmenu.sh"
wget -O l2tpmenu "https://raw.githubusercontent.com/hokagelegend2023/vpnpremium/main/menu/l2tpmenu.sh"
wget -O m-sshovpn "https://raw.githubusercontent.com/hokagelegend2023/vpnpremium/main/menu/m-sshovpn.sh"
wget -O m-vmess "https://raw.githubusercontent.com/hokagelegend2023/vpnpremium/main/menu/m-vmess.sh"
wget -O m-vless "https://raw.githubusercontent.com/hokagelegend2023/vpnpremium/main/menu/m-vless.sh"
wget -O vpnpremium "https://raw.githubusercontent.com/hokagelegend2023/update/main/vpnpremium.sh"


sleep 2
chmod +x vpnpremium
chmod +x m-vless
chmod +x m-vmess
chmod +x m-sshovpn
chmod +x info.sh
chmod +x sstpmenu
chmod +x pptpmenu
chmod +x l2tpmenu
chmod +x add-tr
chmod +x menu-backup
chmod +x restart
chmod +x menutheme
chmod +x menu
chmod +x running
chmod +x m-system
chmod +x m-ssws

cd
echo -e " [INFO] INDEX FILE HTML UPDATE"
sleep 2
cd /home/vps/public_html/

rm index.html
rm favicon-16x16.png
rm logohokage.png

echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1│${NC} ${COLBG1}    • UPDATE WEBSITE   •              ${NC} $COLOR1│$NC"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
echo -e " [INFO] Downloading Update File"
sleep 2
sleep 2
wget -O index.html "https://raw.githubusercontent.com/hokagelegend2023/vpnpremium/main/index/index.html"
wget -O favicon-16x16.png "https://raw.githubusercontent.com/hokagelegend2023/vpnpremium/main/index/favicon-16x16.png"
wget -O logohokage.png "https://raw.githubusercontent.com/hokagelegend2023/vpnpremium/main/index/logohokage.png"
sleep 2

cd
sleep 2
cd /opt/
echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1│${NC} ${COLBG1}       •UPDATE VERSI •                          ${NC} $COLOR1│$NC"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
echo -e " [INFO]  Update Versi "
sleep 2
rm .ver
wget -O .ver "https://raw.githubusercontent.com/hokagelegend2023/ijinpremium/main/.ver"
cd
rm log-install.txt
sleep 2
wget -O log-install.txt "https://raw.githubusercontent.com/hokagelegend2023/vpnpremium/main/update/log-install.txt"
cd
rm vpnpremium
echo -e " [INFO] Update Successfully"
echo -e ""
echo -e " [\e[31m•0\e[0m] \e[31mBACK TO MENU\033[0m"
echo -e   ""
echo -e   "Press x or [ Ctrl+C ] • To-Exit"
echo ""
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
read -p " Select menu : " opt
echo -e ""
case $opt in
0) clear ; menu ;;
x) exit ;;
*) echo "salah tekan" ; sleep 1 ; vpnpremium-update ;;
esac
