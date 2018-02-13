#!/bin/sh

TF=$'\033[31m'
BF=$'\033[91m'

TD=$'\033[35m'
BD=$'\033[30m'

BG=$'\033[30m'

R=$'\033[0m'

printf "\e[0;30m////////////////////////////////////////////////////////////////////////////////"
printf "\n"

cat << EOF
$BG                                     __________                  
$TD                                   __$BG\\${TD}_______ $BG/                  
$TD                                   \  $BG\\     $TD/$BG/                   
$TD                                    \  $BG\\/  $TD/$BG/                    
$TD                                     \ $BG/\\ $TD/$BG/                     
$TD                    ___...:::   +··\\\\ \\  /$BG/$TD//··+   :::...___     
$TD                    \ $TF __________ ____ $TD\\/${TF}________  ____ ___$TD/ __  
$TD                     |$TF/$TD:::''${TF}_    \\$TD':'$TF/  /$TD::'$TF/$TD::'$TF/_/$TD::'$TF//$TD::'$TF/ $TD//  
$TD                     $TF/      /____/  /  /   /   /·____//   /      
$BF                     \\___ _  $BD'::$BF\\  /  / $BD::$BF/      <   / $BD::$BF/       
$BG                  __ $BF/    /   $BD':$BF/ ·---   /   /\\ $BD::$BF\\_/  $BD'$BF/ $BG|      
$BG                  \\\\ $BF\\_________/________/___/  \\____\\__/  $BG|      
$BG                     |                                    |      
$BG                     |_  54686520656e64206973206e656172  _|      
$BG                     : \________________________________/ :      
$R
EOF

printf "\n"
i=0
printf "                   "
while [ $i -le 6 ]
do
  if [ "$i" == 4 ]; then
    printf "\e[$((i+41))m\e[$((i+30))m█▊▋▌▍▎"
  else
    printf "\e[$((i+41))m\e[$((i+30))m▊▋▌▍▎"
  fi
    i=$(($i+1))
    done
    printf "\e[37m█\e[0m▊▋▌▍▎\n\n"

distro="Arch Linux"
kernel=`uname -r`
pkgs=`pacman -Qqs | wc -l`
wm="bspwm"
font="unscii"


printf " \e[0;35m                                distro  \e[0;31m$distro\n"
printf " \e[0;35m                                kernel  \e[0;31m$kernel\n"
printf " \e[0;35m                              packages  \e[0;31m$pkgs\n"
printf " \e[0;35m                                    wm  \e[0;31m$wm\n"
printf " \e[0;35m                                  font  \e[0;31m$font\n"
printf " \e[0m\n"

printf "\e[0;30m\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"
printf "\n"


