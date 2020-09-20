alias ll='ls -la'
alias ls='ls'
alias la='command ls -A'
alias l='command ls -CF'
alias dot='/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME'
alias vim='dmux vim'
alias vifm='vifm -c "set vicmd=tmux_nvim"'
alias bp='dmux vim ~/.bash_profile'
alias brc='dmux vim ~/.bashrc'
alias irc='dmux vim ~/.inputrc'
alias tc='dmux vim ~/.tmux.conf'
alias iv='dmux vim ~/.config/nvim/init.vim'
alias vimrc='dmux vim ~/.config/nvim/init.vim'
alias sbp='source ~/.bash_profile'
alias cat='bat --theme="OneHalfDark" --style=numbers,changes --color always'
alias difm='vifm -c ":only" -c "set vicmd=dmux\ vim";bash -l'

export PATH=$PATH:$HOME/.local/bin:$HOME/Library/Python/2.7/bin:$HOME/Library/Python/3.7/bin:/usr/local/bin:/bin/sh:/usr/local/opt/nvm/nvm.sh:$HOME/.gem/ruby/2.3.0/bin:$HOME/.rvm/bin
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# dmux env vars
export DMUX_PROJECTS=/Users/andregaines/Cloud/Development/projects

# Set FZF envs
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow -g "!{.git,node_modules}/*" 2> /dev/null'

export FZF_DEFAULT_OPTS='
--height 40% --border --inline-info
--color=dark
--color=fg:-1,bg:-1,hl:#c678dd,fg+:#ffffff,bg+:#4b5263,hl+:#d858fe
--color=info:#98c379,prompt:#61afef,pointer:#be5046,marker:#e5c07b,spinner:#61afef,header:#61afef
'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
bind -x '"\C-p": vim $(fzf);'

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
export VIMCONFIG=~/.config/nvim
export VIMDATA=~/.config/nvim
export EDITOR=vim

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

source ~/.local/scripts/shell/trueline.sh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
