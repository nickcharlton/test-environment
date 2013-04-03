# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "precise32"

  config.vm.provision :chef_solo do |chef|
    chef.json = {
      "dotfiles" => {
        "user" => "vagrant",
        "group" => "vagrant",
        "public_key" => IO.read(File.expand_path("~/.ssh/id_rsa.pub")),
        "private_key" => IO.read(File.expand_path("~/.ssh/id_rsa"))
      }
    }

    chef.add_recipe "build-essential"
    chef.add_recipe "python"
    chef.add_recipe "dotfiles"
  end
end
