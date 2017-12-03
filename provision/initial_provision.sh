$!/bin/sh

sudo -i
apt-get update
apt-get upgrade -y

apt-get install ruby git -y

echo "gem: --no-document" > /root/.gemrc
gem i bundler

useradd me
mkdir /home/me
chown -R me:me /home/me

# Install Docker
apt-get install \
  apt-transport-https \
  ca-certificates \
  curl \
  gnupg2 \
  software-properties-common \
  -y

curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg | apt-key add -

add-apt-repository \
  "deb [arch=amd64] https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") \
  $(lsb_release -cs) \
  stable"

apt-get update
apt-get install docker-ce -y
