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
if test -e /usr/bin/apt-get
    omf install apt
else
    echo "apt not installed, skipping apt package"
end
if test -e /usr/local/bin/hub
    omf install hub
else
    echo "Downloading hub for x86_64"
    wget -O /tmp/hub.tar.gz https://github.com/github/hub/releases/download/v2.3.0-pre10/hub-linux-amd64-2.3.0-pre10.tgz
    echo "Untarring hub"
    mkdir /tmp/hub-dots
    tar xf /tmp/hub.tar.gz -C /tmp/hub-dots
    echo "Running hub installer (you may need to enter your password)"
    sudo /tmp/hub-dots/hub-linux-amd64-2.3.0-pre10/install
    echo "Installed hub"
    omf install hub
end
