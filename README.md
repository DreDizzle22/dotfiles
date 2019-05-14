## Steps for Setting up Dotfiles Repo on Local Machine

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
