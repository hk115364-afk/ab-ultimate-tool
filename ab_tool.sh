#!/bin/bash
# AB ULTIMATE TOOL V3.0 - By Abu Bakar Khan
# Ethical Use Only!

# Colors
red='\033[1;31m'
green='\033[1;32m'
yellow='\033[1;33m'
blue='\033[1;34m'
cyan='\033[1;36m'
white='\033[1;37m'
reset='\033[0m'

while true
do
clear
echo -e "${red}"
echo "    _    ____    _   _ _   _____ ___ __  __    _  _____ _____ "
echo "   / \  | __ )  | | | | | |_   _|_ _|  \/  |  / \|_   _| ____|"
echo "  / _ \ |  _ \  | | | | |   | |  | || |\/| | / _ \ | | |  _|  "
echo " / ___ \| |_) | | |_| | |___| |  | || |  | |/ ___ \| | | |___ "
echo "/_/   \_\____/   \___/|_____|_| |___|_|  |_/_/   \_\_| |_____|"
echo -e "${reset}"
echo -e "${cyan}=================================================${reset}"
echo -e "${yellow}   AB ULTIMATE TOOL V3.0 - HACKER EDITION ${reset}"
echo -e "${green}   Creator: Abu Bakar Khan ${reset}"
echo -e "${cyan}=================================================${reset}"
echo -e "${white}"
echo "1.  Apna IP dekho"
echo "2.  Website ka IP nikalo"
echo "3.  Port Scanner"
echo "4.  Website Info (Whois)"
echo "5.  Strong Password Generator"
echo "6.  Apna System Info"
echo "7.  Internet Speed Test"
echo "8.  Insta DP Downloader [NEW]"
echo "9.  IP Location Tracker [NEW]"
echo "10. Exit"
echo -e "${reset}"
echo ""
read -p "Number dalo [1-10]: " opt

if [ $opt == "1" ]; then
    curl ifconfig.me; echo ""; read -p "Back ke liye Enter dabao"
elif [ $opt == "2" ]; then
    read -p "Website naam likho (google.com): " site; ping -c 1 $site; read -p "Back ke liye Enter dabao"
elif [ $opt == "3" ]; then
    read -p "IP likho (127.0.0.1): " ip; nmap $ip; read -p "Back ke liye Enter dabao"
elif [ $opt == "4" ]; then
    read -p "Website likho: " site2; whois $site2 | head -n 20; read -p "Back ke liye Enter dabao"
elif [ $opt == "5" ]; then
    python -c "import random,string;print(''.join(random.choice(string.ascii_letters+string.digits+'@#$%') for _ in range(16)))"
    echo -e "${green}Strong Password Ready!${reset}"; read -p "Back ke liye Enter dabao"
elif [ $opt == "6" ]; then
    uname -a; uptime; read -p "Back ke liye Enter dabao"
elif [ $opt == "7" ]; then
    ping -c 4 google.com; read -p "Back ke liye Enter dabao"
elif [ $opt == "8" ]; then
    read -p "Instagram Username likho (ex: cristiano): " instauser
    echo -e "${yellow}HD DP ka link nikal raha hun...${reset}"
    python3 -c "
import requests
u='$instauser'
try:
    headers={'User-Agent':'Mozilla/5.0'}
    r=requests.get(f'https://www.instagram.com/{u}/', headers=headers)
    # Simple method - search for profile pic url
    if 'profile_pic_url_hd' in r.text:
        print('DP mil gayi! Link browser me kholo:')
        # Extract rough link
        import re
        m=re.search(r'\"profile_pic_url_hd\":\"([^\"]+)\"', r.text)
        if m:
            link=m.group(1).replace('\\\\u0026','&')
            print(link)
        else:
            print('Link nahi mila, profile private ho sakti hai')
    else:
        print('Profile private hai ya username ghalat hai')
except Exception as e:
    print(e)
"
    read -p "Back ke liye Enter dabao"
elif [ $opt == "9" ]; then
    read -p "IP likho (khali chor do to apna IP): " locip
    if [ -z "$locip" ]; then locip=$(curl -s ifconfig.me); fi
    echo -e "${cyan}Location nikal raha hun $locip ki...${reset}"
    curl -s https://ipinfo.io/$locip/json
    echo ""; read -p "Back ke liye Enter dabao"
elif [ $opt == "10" ]; then
    echo -e "${red}Allah Hafiz Hacker Abu Bakar Bhai!${reset}"; break
fi
done
