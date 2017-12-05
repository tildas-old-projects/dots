#!/usr/bin/fish
echo "dots package installer v1"
echo "(c) 2017 tilda"

function space
    echo \n
end

function check_fish
    grep fish /etc/shells >/dev/null
end

space
if check_fish
    echo "Fish is installed, of course!"
else
    set_color e0432f
    echo "Bummer. fish is not in /etc/shells."
end

if test -e ~/.config/fish/conf.d/omf.fish
    echo "Oh My Fish is installed, good!"
else
    set_color e0432f
    echo "Bummer. Oh My Fish is NOT installed."
end

omf install cmorrell
# Assuming the user uses Ubuntu or its forks
omf install apt
omf install thefuck
