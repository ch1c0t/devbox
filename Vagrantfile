Vagrant.configure '2' do |config|
  config.vm.box = 'debian/contrib-stretch64'

  config.vm.provision 'shell', path: 'provision/initial_provision.sh'
  config.vm.provision :reload
  config.vm.provision 'shell', path: 'provision/provision_after_docker_is_ready.sh'
end
