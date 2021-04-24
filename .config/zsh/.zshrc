source ~/.config/zsh/.zprofile

# Basic zsh settings
PATH=$PATH:$HOME/.scripts
setopt no_list_ambiguous

# Setting up Defaults
export EDITOR='nvim'
export TERMINAL='alacritty'
export BROWSER='firefox'
export MANPAGER='nvim +Man!'

# Prompt Settings
PROMPT='%F{blue}%1~%f %F{cyan}•%f '

## Git Settings
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{yellow}(%b)%r%f'
zstyle ':vcs_info:*' enable git

# Aliases
## App launchers
alias tsm='transmission-remote'
alias s='startx'
alias v='nvim'
alias f='ranger'
alias tty='tty-clock -C6 -c -t'
alias pac='sudo pacman'
alias commit='git add -A; git commit -m'
alias weather='clear && curl wttr.in'
alias shot='flameshot gui'
alias kill='killall -q'
alias w='feh --bg-fill --randomize ~/Media/wallpapers/maller/'

## Terminal maintenance
alias rec='gpg --recv-keys --keyserver hkp://pgp.mit.edu'
alias todo='cat ~/Dropbox/writing/notes/To-do.md'
alias todoe='nvim ~/Dropbox/writing/notes/To-do.md'
alias reset='cd ~; clear; source ~/.config/zsh/.zprofile'
alias fetch='clear && neofetch && fortune ~/.scripts/quotes/quotes'

## Journal launching aliases
alias v1='date +"%R - %a, %B %d, %Y" | xclip -select clipboard; cd ~/Dropbox/writing/journal; nvim volume-1.md'
alias v2='date +"%R - %a, %B %d, %Y" | xclip -select clipboard; cd ~/Dropbox/writing/journal; nvim volume-2.md'
alias v3='date +"%R - %a, %B %d, %Y" | xclip -select clipboard; cd ~/Dropbox/writing/journal; nvim volume-3.md'
alias v4='date +"%R - %a, %B %d, %Y" | xclip -select clipboard; cd ~/Dropbox/writing/journal; nvim volume-4.md'
alias v5='date +"%R - %a, %B %d, %Y" | xclip -select clipboard; cd ~/Dropbox/writing/journal; nvim volume-5.md'

## Snippets
alias ddate='date +"%R - %a, %B %d, %Y" | xclip -select clipboard && date +"%R - %a, %B %d, %Y"' 
