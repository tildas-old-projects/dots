#!/usr/bin/fish
echo "dots install v1.0"
echo "(c) tilda 2017"

if test -e ~/.vimrc
    mv ~/.vimrc ~/.vimrc.pre-dots
    ln -s ~/.vimrc ./.vimrc
end
