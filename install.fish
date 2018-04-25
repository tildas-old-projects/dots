#!/usr/bin/fish
echo "dots install v1.0"
echo "(c) tilda 2017"

echo "Installing vimrc"
if test -e ~/.vimrc
    mv ~/.vimrc ~/.vimrc.pre-dots
    ln -s ~/.vimrc $PWD/.vimrc
else
    ln -s ~/.vimrc $PWD/.vimrc
end
echo "Installing i3 config"
if test -d ~/.config/i3
    mv ~/.config/i3/config ~/.config/i3/config.pre-dots
    ln -s ~/.config/i3/config $PWD/.config/i3/config
else
    echo "Skipping i3, most likely not installed."
end
echo "Installing polybar config"
if test -e /usr/local/bin/polybar
    if test -d ~/.config/polybar
        mv ~/.config/polybar/config ~/.config/polybar/config.pre-dots
        ln -s ~/.config/polybar/config $PWD/.config/polybar/config
    else
        echo "Skipping polybar, most likely not installed"
    end
end
echo "Installing Oh My Fish"
curl -sSL http://oh-my.fish | fish
echo "Installing Oh My Fish packages"
./install_packages.fish
echo "You should be all setup! Enjoy."
