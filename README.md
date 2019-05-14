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
git --git-dir=$HOME/dotfiles --work-tree=$HOME
```

**Step 6**
```
cd ~
```

**Step 7**
```
git remote add https://github.com/DreDizzle22/dotfiles.git
```

**Step 8**
```
git pull -u origin master
```
