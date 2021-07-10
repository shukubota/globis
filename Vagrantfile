# -*- mode: ruby -*-
# vi: set ft=ruby :
# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.

Vagrant.configure("2") do |config|
    config.vm.box = "ubuntu/xenial64"
    config.vm.hostname = 'globis'
    config.vm.network :private_network, ip: '192.168.50.20'
    config.vm.provider :virtualbox do |vb|
      vb.gui = false
      vb.cpus = 4
      vb.memory = 4096
      vb.customize ['modifyvm', :id, '--natdnsproxy1', 'off']
      vb.customize ['modifyvm', :id, '--natdnshostresolver1', 'off']
    end
    config.disksize.size = '30GB'
    config.mutagen.orchestrate = true
    config.vm.synced_folder './', '/home/vagrant/myspace', type: 'rsync',
      rsync_auto: true,
      rsync__exclude: ['.git/', 'node_modules/', 'log/', 'tmp/', 'vendor/bundle/']
    config.vm.provision :docker, run: 'always'
    config.vm.provision :docker_compose
  end