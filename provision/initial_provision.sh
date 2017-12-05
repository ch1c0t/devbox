$!/bin/sh

sudo -i
apt-get update
apt-get upgrade -y

apt-get install vim-nox ruby zsh tmux htop git less file -y

echo "gem: --no-document" > /root/.gemrc
gem i bundler
