#!/bin/bash
R () {
	cd /bin
	if [ -e python ];then
	python ~/zsh-theme-for-Os/.random.py
	else
	apt update
	apt upgrade
	apt install python
	python ~/zsh-theme-for-Os/.random.py
	fi
	}
	fl () {
		cd ~/zsh-theme-for-Os
		}
	ba() {
		R
		figlet ZSH-OS
		echo
		}
		zsh-theme() {
			ba
			fl
			bash start.sh
			}
				zsh-setup() {
					fl
					bash setup.sh
					}
		menu () {
			clear
			ba
			echo -e -n "\033[1;92m Do you want to install zsh-theme in Termux-Os\033[1;96m(\033[0mY|n\033[1;96m) "
			read a
			case $a in
			y|Y)zsh-theme ;;
			n|N)exit ;;
			*)menu ;;
			esac
			}
			main () {
				cd /bin
			if [ -e zsh2 ];then
			menu
			else
			zsh-setup
			menu
			fi
			}
			cd /
			if [ -e data ];then
			printf "\n\n \033[1;91mThis tool is only for Termux-Os\n\n"
			else
			main
			fi