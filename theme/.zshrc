

export ZSH=~/.oh-my-zsh

plugins=(git)

source $ZSH/oh-my-zsh.sh



# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source ~/.plugin/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.plugin/zsh-autosuggestions/zsh-autosuggestions.zsh
alias a='apt install'
alias p='python'
alias p2='python2'
alias p3='python3'
alias g='git clone'
alias t='termux-open'

aa() {
clear
#python ~/.random.py
echo -e -n "\033[1;92mEnter package name : "
read a
if [ ! -z $a ];then
apt install $a
fi
}
