$!/bin/sh

sudo -i
apt-get update
apt-get upgrade -y

apt-get install ruby git -y

echo "gem: --no-document" > /root/.gemrc
gem i bundler
