$!/bin/sh

sudo -i
apt-get update
apt-get upgrade -y

apt-get install ruby git curl -y

echo "gem: --no-document" > /root/.gemrc
gem i bundler

useradd me
mkdir /home/me
chown -R me:me /home/me
