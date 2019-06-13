## Steps for Setting Up Dotfiles Repo on Local Machine

**Step 1**
```
cd ~
```

**Step 2**
```
mkdir dotfiles && cd dotfiles
```

**Step 3**
```
git init --bare
```

**Step 4**
Run `git config -e` then append the following: 
```
[status]
         showUntrackedFiles = no
```

**Step 5**
```
git --git-dir=$HOME/dotfiles --work-tree=$HOME remote add origin https://github.com/DreDizzle22/dotfiles.git
```

**Step 6**
```
git --git-dir=$HOME/dotfiles --work-tree=$HOME pull origin master
```

## Steps for Setting Up vi Keybindings in the Terminal

**Step 1**
Install the latest version of bash:
`brew install bash`

**Step 2**
Change the shell by running the following:
`chsh -s /usr/local/bin/bash`

**Step 3**
Add the following commands to the .vimrc file.
```
# Enable vi mode and set keymap
set editing-mode vi
set keymap vi

# "\M-\e[D": beginning-of-line
set show-mode-in-prompt on
set vi-cmd-mode-string "\1\e[2 q\2"
set vi-ins-mode-string "\1\e[6 q\2"

# vi keybindings
set keymap vi-command
"gg": beginning-of-history
"G": end-of-history
"\eOD":""
"\e[D":""
"\eOC":""
"\e[C":""
"\eOA":""
"\e[A":""
"\eOB":""
"\e[B":""
set keymap vi-insert
"jj": vi-movement-mode
RET: "\e\njj"
"\eOD":""
"\e[D":""
"\eOC":""
"\e[C":""
"\eOA":""
"\e[A":""
"\eOB":""
"\e[B":""
set colored-stats On
```

**Step 4**
Close and reopen the terminal.