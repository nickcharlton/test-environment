# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "precise32"

  config.vm.provision :chef_solo do |chef|
    chef.add_recipe "build-essential"
  end
end
