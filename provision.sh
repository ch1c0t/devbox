$!/bin/sh

sudo -i
apt-get update -y
apt-get upgrade -y

apt-get install htop tmux zsh vim ruby -y

echo "gem: --no-document" > .gemrc
gem i bundler

useradd me
mkdir /home/me
chown -R me:me /home/me
