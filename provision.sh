$!/bin/sh

sudo -i
apt-get update
apt-get upgrade -y

apt-get install vim-nox ruby zsh tmux htop git less file -y

echo "gem: --no-document" > /root/.gemrc
gem i bundler docker-api

git clone --recursive https://github.com/ch1c0t/.vim
ln -s .vim/main.vim .vimrc

# This command changes from root to vagrant user. That's why 'exit' is needed.
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
exit


cp -r /root/.vim /home/vagrant
cp -r /root/.oh-my-zsh /home/vagrant
cp /root/.zshrc /home/vagrant

chown -R vagrant:vagrant /home/vagrant

ruby /vagrant/provision.rb
