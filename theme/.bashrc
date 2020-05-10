cd /bin
if [ -e zsh ];then
zsh
else
clear
printf "\n\n Installing zsh… \n"
apt update
apt upgrade
apt install zsh
fi