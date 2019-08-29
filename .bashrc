alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias dot='/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME'
alias vim='dmux vim'
alias vifm='vifm -c "set vicmd=tmux_nvim"'
# alias vi=/usr/local/bin/vim
# alias vim=/usr/local/bin/vim

export PATH=$PATH:$HOME/.local/bin:$HOME/Library/Python/2.7/bin:$HOME/Library/Python/3.7/bin:/usr/local/opt/node@10/bin:/bin/sh
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

#export LSCOLORS=exfxcxdxbxegedabagacad
#export CLICOLOR=1
#export TERM=xterm-256color

# Set colors
export LSCOLORS=ExFxBxDxCxegedabagacad
export CLICOLOR=true
# export TERM=xterm-256color
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
# enable powerline-status for bash
# powerline-daemon -q
# POWERLINE_BASH_CONTINUATION=1
# POWERLINE_BASH_SELECT=1
# . ~/Library/Python/3.7/lib/python/site-packages/powerline/bindings/bash/powerline.sh

if [ -f ~/terminal_profiles/Ubuntu.terminal ]; then
PS1="\[$(tput setaf 46)\u"
PS1+="@\h$(tput sgr0):"
PS1+="$(tput setaf 31)\w$(tput sgr0)\]$ "
export PS1
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

if [ ! -z "$(pip --disable-pip-version-check show powerline-status 2> /dev/null)" ]; then
 powerline-daemon -q
 POWERLINE_BASH_CONTINUATION=1
 POWERLINE_BASH_SELECT=1
 . $(pip --disable-pip-version-check show powerline-status | grep Location | awk -F' ' '{print $2}')/powerline/bindings/bash/powerline.sh
fi
