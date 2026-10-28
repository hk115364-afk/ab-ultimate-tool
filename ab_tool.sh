clear
echo -e "\e[1;92m"
echo "  _   ____    _   _ _ _   _  _   _ _   _   _           "
echo " / \ | __ )  | | | | | | | || | | | | | | | |_ ___  "
echo "|  _  ||  _ \   | | | | | | | || |_| | | | | | __/ _ \ "
echo "| | | || |_) |  | |_| | | | | ||  _  | |_| | | || (_) |"
echo "|_| |_||____/    \___/|_|_| |_||_| |_|\___/|_|\__\___/ "
echo -e "\e[1;93m V4.0 - Created By Abu Bakar Khan | Karachi, Pakistan \e[0m"
echo ""

green="\e[1;92m"
reset="\e[0m"

echo -e "${green}[1] Instagram Info  [2] IP Tracker  [9] IP Location [11] Password Generator [10] Exit${reset}"
read -p "Option Chuno: " opt

if [ $opt == "9" ]; then
  curl -s https://ipinfo.io/
  read -p "Back ke liye Enter dabao"
elif [ $opt == "11" ]; then
  echo -e "${green}Strong Password Bana Raha Hun...${reset}"
  tr -dc 'A-Za-z0-9!@#$%&*' < /dev/urandom | head -c 16; echo
  read -p "Back ke liye Enter dabao"
elif [ $opt == "10" ]; then
  echo "Allah Hafiz Hacker Abu Bakar Bhai!"
else
  echo "Option $opt selected - Coming Soon!"
fi
