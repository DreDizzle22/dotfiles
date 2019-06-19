alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias dots='/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME'

export PATH=$PATH:~/Library/Python/2.7/bin:~/Library/Python/3.7/bin:/usr/local/opt/node@10/bin
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export LSCOLORS=exfxcxdxbxegedabagacad
export CLICOLOR=1
export TERM=xterm-256color

if [ -f ~/terminal_profiles/Ubuntu.terminal ]; then
PS1="\[$(tput setaf 46)\u"
PS1+="@\h$(tput sgr0):"
PS1+="$(tput setaf 31)\w$(tput sgr0)\]$ " 
export PS1
fi
