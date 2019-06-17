alias myip='curl -s4 ifconfig.pro;curl -s6 ifconfig.pro'
alias packet_test='myip | mtr -r -c 100'
alias fuck='sudo "$BASH" -c "$(history -p !!)"'
alias ipconfig='ifconfig'
alias find_str='grep -rn . -e '

# location specific aliases
HD="/mnt/BEEE-B8B5"
# alias routine='sudo bash ~/code/scripts/routine.sh'
alias routine='sudo ${HD}/code/scripts/routine.sh'
alias vault='cd ${HD}'
alias code='cd ${HD}/code'
alias grad='cd ${HD}/school/grad'
alias grad_networks='cd /mnt/BEEE-B8B5/school/grad/2019_SPR_EE382N_Communication_Networks'
alias grad_algorithms='cd /mnt/BEEE-B8B5/school/grad/2019_SPR_EE382V_Algorithms'
alias grad_security='cd /mnt/BEEE-B8B5/school/grad/2019_SMR_EEW382N_Systems_Security'
