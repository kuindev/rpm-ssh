#!/bin/bash
#
#  /$$   /$$           /$$           /$$$$$$$                      
# | $$  /$$/          |__/          | $$__  $$                     
# | $$ /$$/  /$$   /$$ /$$ /$$$$$$$ | $$  \ $$  /$$$$$$  /$$    /$$
# | $$$$$/  | $$  | $$| $$| $$__  $$| $$  | $$ /$$__  $$|  $$  /$$/
# | $$  $$  | $$  | $$| $$| $$  \ $$| $$  | $$| $$$$$$$$ \  $$/$$/ 
# | $$\  $$ | $$  | $$| $$| $$  | $$| $$  | $$| $$_____/  \  $$$/  
# | $$ \  $$|  $$$$$$/| $$| $$  | $$| $$$$$$$/|  $$$$$$$   \  $/   
# |__/  \__/ \______/ |__/|__/  |__/|_______/  \_______/    \_/    
#
# ====================================================================
#                      The KuinDev Projects
#            This script will install your vpn server
#             (C) Copyright 2022-2023 By KuinDev.Com
# ====================================================================

# >> Import String
export RED="\033[0;31m"
export GREEN="\033[0;32m"
export YELLOW="\033[0;33m"
export BLUE="\033[0;34m"
export PURPLE="\033[0;35m"
export CYAN="\033[0;36m"
export LIGHT="\033[0;37m"
export NC="\033[0m"
export ERROR="[${RED} ERROR ${NC}]"
export INFO="[${YELLOW} INFO ${NC}]"
export FAIL="[${RED} FAIL ${NC}]"
export OKEY="[${GREEN} OKEY ${NC}]"
export PENDING="[${YELLOW} PENDING ${NC}]"
export SEND="[${YELLOW} SEND ${NC}]"
export RECEIVE="[${YELLOW} RECEIVE ${NC}]"
export RED_BG="\e[41m"
export BOLD="\e[1m"
export WARNING="${RED}\e[5m"
export UNDERLINE="\e[4m"

# >> Check root access
if [[ $(whoami) != 'root' ]]; then
    clear; echo -e "${FAIL} Root access required for this process !"; exit 1
fi

# >> Check Arcitecture Support
if [[ $(uname -m ) != 'x86_64' ]]; then
    clear; echo -e "${FAIL} Only Supported 64Bit System !"; exit 1
fi

# >> Check Operating Support
if command -V yum > /dev/null 2>&1; then
  EXEC_OPTION='yum';
else
  clear; echo -e "${FAIL} Operating System Not Supported"; exit 1
fi

