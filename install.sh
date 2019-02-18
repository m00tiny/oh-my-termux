#!/data/data/com.termux/files/usr/bin/bash

apt update
apt install -y zsh curl nano nmap axel hub cowsay
apt install -y openssh torsocks termux-api termux-keyring
apt install -y wget unzip unrar tar screen ranger
apt install -y python python2 nodejs ruby
apt install -y p7zip bzip2 asciinema zip radare2
apt install -y gpgme golang dnsutils grep sed gawk
apt install -y autossh corkskrew sslh
if [ -d "$HOME/.termux" ]; then
 mv $HOME/.termux $HOME/.termux.bak
fi

curl -fsLo $HOME/.termux/colors.properties --create-dirs https://cdn.rawgit.com/4679/oh-my-termux/master/.termux/colors.properties
curl -fsLo $HOME/.termux/font.ttf --create-dirs https://cdn.rawgit.com/4679/oh-my-termux/master/.termux/font.ttf

git clone git://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh --depth 1
cp $HOME/.oh-my-termux/.zshrc $HOME/.zshrc
chsh -s zsh

mkdir -p $HOME/projects
ln -s $HOME/.oh-my-termux $HOME/projects/oh-my-termux
ln -s $HOME/.oh-my-zsh $HOME/projects/oh-my-zsh

mkdir -p $HOME/toolshed
mkdir -p $HOME/resources

termux-setup-storage

cowsay -m "m00 like a shark - m00tiny" > $HOME/../usr/etc/motd

git clone git://github.com/danielmiessler/SecLists.git $HOME/resources/SecLists/

exit
