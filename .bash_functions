#!/bin/bash

# function to set terminal title  
function set_title() {
  if [[ -z "$ORIG" ]]; then
    ORIG=$PS1
  fi
  TITLE="\[\e]2;$*\a\]"
  PS1=${ORIG}${TITLE}
}


function mkdir_class() {
	cwd=$(pwd)
	for arg in "$*"
	do
		mkdir "${arg}"
		cd "${arg}"
		mkdir assignments
		mkdir lectures_and_notes
		cd lectures_and_notes
		mkdir other_external
	done
	cd "${cwd}"
}


function save_pwd() {
	cwd=$(pwd)
	echo "alias $*='cd ${cwd}' saved to ~/.bash_aliases"
	echo "alias $*='cd ${cwd}'" >> ~/.bash_aliases
	source ~/.bashrc
}

function start_vpn() {
	sudo openvpn --mktun --dev tun1
	sudo ifconfig tun1 up
	sudo openconnect "$1" --interface=tun1
}

function stop_vpn() {
	sudo ifconfig tun1 down
	sudo openvpn --rmtun --dev tun1
}


# function git_submit() {
# 	git add -A
# 	git commit -am "$1"
# 	git push
# }