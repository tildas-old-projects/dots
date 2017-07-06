# My dotfiles
These are my dotfiles - based on terminal tools (or GUI tools) that I use everyday (or maybe not!)

# Installation
First, clone it:

```bash
git clone https://github.com/xshotD/dots ~/.dots
```

You should be able to just simply symlink them:

```bash
ln -s ~/.dots/.vimrc ~/.vimrc
ln -s ~/.dots/.zshrc ~/.zshrc
ln -s ~/.dots/.vim ~/.vim
ln -s ~/.dots/.tmux.conf ~/.tmux.conf
```

If you ask 'Why not just `cp` them?' - well cp does not update these files when the repository itself is updated. So I may update with a nice little change and you'll have to `cp` it manually. Although you could write a script to do that...

After install:

- `:so ~/.vimrc`

- `source ~/.zshrc`

- `tmux source-file ~/.tmux.conf`

You're done, enjoy!
