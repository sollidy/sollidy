# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
fzf-tab
git
dirhistory
yarn
nvm
brew
command-not-found
git-prompt
z
alias-tips
fzf-zsh-plugin
)

source $ZSH/oh-my-zsh.sh

export JAVA_HOME=/opt/jdk-17.0.1+12
export PATH=$PATH:$JAVA_HOME/bin
export FZF_PREVIEW_ADVANCED=true

# Example aliases
alias vpnon="openvpn3 session-start --config ~/Documents/config/OVPN_CS.ovpn"
alias vpnoff="openvpn3 session-manage --config ~/Documents/config/OVPN_CS.ovpn --disconnect"
alias bat="batcat"

# Group directories first, show icons, and enable file size color scale
alias ls='exa --group-directories-first --icons --color-scale'
alias lt='exa --tree --level=2 --icons' # Show in tree view
alias l='ls -a'                         # Short, all files
alias ld='l -D'                         # Short, only directories
alias ll='ls -lbG --git'                # Long, file size prefixes, grid, git status
alias la='ll -a'                        # Long, all files
alias lC='la --sort=changed'            # Long, sort changed
alias lM='la --sort=modified'           # Long, sort modified
alias lS='la --sort=size'               # Long, sort size
alias lX='la --sort=extension'          # Long, sort extension

source /home/sollidy/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
