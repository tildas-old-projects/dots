# My dotfiles
These are my dotfiles - based on terminal tools (or GUI tools) that I use everyday (or maybe not!)

# Includes:
- vim & neovim
- hey
- tmux
- zsh
- neofetch

# Installation
First, clone it:

```bash
git clone https://github.com/tilda/dots ~/.dots
```

You should be able to just simply symlink them:

```bash
ln -s ~/.dots/.vimrc ~/.vimrc
ln -s ~/.dots/.zshrc ~/.zshrc
ln -s ~/.dots/.tmux.conf ~/.tmux.conf
```

If you ask 'Why not just `cp` them?' - well cp does not update these files when the repository itself is updated. So I may update with a nice little change and you'll have to `cp` it manually. Although you could write a script to do that...

If you use vim, clone vim-plug in before using this config otherwise nothing will work.

After install:

- `:so ~/.vimrc`

- `:PlugInstall`

- `source ~/.zshrc`

- `tmux source-file ~/.tmux.conf`

Optional:

- `hey`

![](https://i-made.theworstme.me/17bb13.gif)

`hey` is a bash program I wrote as a little shorter sudo wrapper.

# And...

You're done, enjoy!
