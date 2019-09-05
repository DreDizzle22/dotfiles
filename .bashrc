alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias dot='/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME'
alias vim='dmux vim'
alias vifm='vifm -c "set vicmd=tmux_nvim"'
alias bp='dmux vim ~/.bash_profile'
alias brc='dmux vim ~/.bashrc'
alias irc='dmux vim ~/.inputrc'
alias sbp='source ~/.bash_profile'

export PATH=$PATH:$HOME/.local/bin:$HOME/Library/Python/2.7/bin:$HOME/Library/Python/3.7/bin:/usr/local/opt/node@10/bin:/bin/sh
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Set colors
export LSCOLORS=ExFxBxDxCxegedabagacad
export CLICOLOR=true
if [[ $TMUX = "" ]]; then
  export TERM=xterm-256color
else
  export TERM=screen-256color
fi
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export VIMCONFIG=~/.vim
export VIMDATA=~/.vim

export EDITOR=tmux_nvim

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# trueline settings
TRUELINE_SHOW_VIMODE=true
declare -a TRUELINE_SEGMENTS=(
  'user,grey,special_grey'
  'working_dir,mono,cursor_grey'
  'git,grey,special_grey'
)

declare -A TRUELINE_SYMBOLS=(
  [vimode_cmd]='NORMAL'
  [vimode_ins]='INSERT'
)

source ~/.config/trueline/trueline.sh
