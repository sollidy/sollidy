# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

autoload -U compinit
compinit -i

plugins=(
helm
kube-ps1
kubectl
fzf-tab
git
dirhistory
yarn
zsh-nvm
command-not-found
git-prompt
z
fzf-zsh-plugin
zsh-syntax-highlighting
docker
docker-compose
alias-tips
golang
)

source $ZSH/oh-my-zsh.sh

export FZF_PREVIEW_ADVANCED=true

# Example aliases
# alias vpnon="openvpn3 session-start --config ~/Documents/config/OVPN_CS.ovpn"
# alias vpnoff="openvpn3 session-manage --config ~/Documents/config/OVPN_CS.ovpn --disconnect"
alias vpnon="sudo openvpn --config ~/Documents/vpn/CS.ovpn --auth-nocache --disable-dco"
alias vpnoff="sudo killall openvpn"
alias ta="tmux attach"
alias vi="nvim"
alias cb="xclip -selection clipboard"
alias fbig="find . -type f -printf '%s %p\n'|sort -nr|head"

# Group directories first, show icons, and enable file size color scale
alias ls='eza --group-directories-first --icons --color-scale'
alias lt='eza --tree --level=2 --icons' # Show in tree view
alias l='ls -a'                         # Short, all files
alias ld='l -D'                         # Short, only directories
alias ll='ls -lbG --git'                # Long, file size prefixes, grid, git status
alias la='ll -a'                        # Long, all files
alias lC='la --sort=changed'            # Long, sort changed
alias lM='la --sort=modified'           # Long, sort modified
alias lS='la --sort=size'               # Long, sort size
alias lX='la --sort=extension'          # Long, sort extension
