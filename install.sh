## Debian Jessie-Backports 
sudo echo "deb http://http.debian.net/debian jessie-backports main contrib non-free" >> /etc/apt/sources.list
sudo apt-get update
sudo apt-get upgrade

## Necessary things
sudo apt-get install zsh vim lm-sensors gnome-themes-standard alsa-utils

## Nvidia
sudo dpkg --add-architecture i386
sudo apt-get update
sudo apt-get install bbswitch-dkms intel-microcode firmware-linux-nonfree bumblebee bumblebee-nvidia primus primus-libs primus-libs:i386 linux-headers-$(uname -r)

## Dotfiles
mkdir ~/projects
cd ~/projects
git clone https://github.com/dyrnade/dotfiles.git
cd dotfiles
cp rc.xml ~/.config/openbox
cp -r .zshrc oh-my-zsh .fonts /home/$USER

fc-cache -fv ~/.fonts

git clone https://raw.github.com/robbyrussell/oh-my-zsh.git
mv oh-my-zsh ~/.oh-my-zsh
cd ~/.oh-my-zsh/plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git

chsh -s /usr/bin/zsh
sudo chsh -s /usr/bin/zsh

cd ~/projects/dotfiles
mkdir ~/.config/terminator
cp terminator/config ~/.config/terminator
cp rc.xml ~/.config/openbox

mkdir ~/.icons
mkdir ~/.themes
cp openbox_theme/iris.tar.gz ~/.themes
tar -xzvf ~/.themes/iris.tar.gz -C ~/.themes

cp openbox_theme/1920x1080b.png ~/images/wallpapers/shared

