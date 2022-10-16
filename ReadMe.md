
## Getting started

### Cloning this repo:

Instead of the below commands in this section, you can run the following script:
```bash
curl -Lks https://gist.github.com/madmansn0w/9f6e6620ea7b3b358ed2ef69a7bf18e1#file-dfcfg-install | /bin/bash
```

#### Otherwise, from the $HOME as your current working directory, 

Clone the repo:
```bash
git clone --bare https://github.com/madmansn0w/dotfiles.git $HOME/.cfg
```

Checkout the content from bare repo to $HOME
```bash
dfc checkout
```

If you are concerned about the files that might be overwritten, the below script will automatically move all those files to a backup folder.
```bash
mkdir -p .config-backup && \
dfc checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
xargs -I{} mv {} .config-backup/{}
```

Re-run the checkout if you had conflicts above
```bash
dfc checkout
```

---

### Tracking your own dotfiles

Create a `.cfg` folder in your $HOME directory, if it doesn't exist
```bash
git init --bare $HOME/.cfg
```

Create an alias:
```bash
alias dfc='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```

Set the flag `showUntrackedFiles` to `no` on your local repo:
```bash
config config --local status.showUntrackedFiles no
```

Export alias to `.bashrc`
```bash
echo "alias dfc='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bashrc
```

Export alias to `.zshrc` (if you like)
```bash
echo "alias dfc='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.zshrc
```

#### Adding new files
Add new dotfiles to your local repo for tracking:
```bash
dfc status
dfc add .vimrc
dfc commit -m "Add vimrc"
dfc add .bashrc
dfc commit -m "Add bashrc"
dfc push
```