

R="$(printf '\033[1;31m')"
G="$(printf '\033[1;32m')"
Y="$(printf '\033[1;33m')"
W="$(printf '\033[1;37m')"
C="$(printf '\033[1;36m')"

clear
echo
echo
echo ${G} [*]  ${W} TOOLS Kali Linux metasploit framework  
echo

apt update -y
echo
apt install figlet -y
echo
apt install git -y
echo
echo  ${G} [I] KALI Linux !
echo
clear
echo
echo ${R}
echo " [I] ${Y} Do you need to install metasploit framework work? "
echo
echo [1]Install
echo
echo [2]no install
echo  ${C}
read -p " Choose (1/2) >  " class
echo




if [[ $class == 1 ]]; then
apt update -y
apt upgrade -y
clear
echo
echo ${G} [I] INSTALL
sudo apt install metasploit-framework
apt update -y
clear
echo
echo ${G} DONE !


elif [[ $class == 2 ]]; then 
clear
echo


else
clear
echo
echo ${R}
echo [I]  Error
echo ${W}
read -p " Press any key to continue .....  "
echo
echo
./setup.sh


fi


