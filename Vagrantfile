# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.

Vagrant.configure("2") do |config|
  config.vm.define "ddc1" do |ddc1|
    ddc1.vm.box = "ubuntu/trusty64"
    ddc1.vm.hostname = 'ddc1'
    ddc1.vm.box = "ubuntu/trusty64"

    ddc1.vm.network :private_network, ip: "192.168.35.10"
    ddc1.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 1024]
      v.customize ["modifyvm", :id, "--name", "ddc1"]
    end

    ddc1.vm.provision "shell", path: "manager.sh"

  end

  config.vm.define "ddc2" do |ddc2|
    ddc2.vm.box = "ubuntu/trusty64"
    ddc2.vm.hostname = 'ddc2'
    ddc2.vm.box = "ubuntu/trusty64"

    ddc2.vm.network :private_network, ip: "192.168.35.11"

    ddc2.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 1024]
      v.customize ["modifyvm", :id, "--name", "ddc2"]
    end

    ddc2.vm.provision "shell", path: "worker.sh"
  end

  config.vm.define "ddc3" do |ddc3|
    ddc3.vm.box = "ubuntu/trusty64"
    ddc3.vm.hostname = 'ddc3'
    ddc3.vm.box = "ubuntu/trusty64"

    ddc3.vm.network :private_network, ip: "192.168.35.12"

    ddc3.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 1024]
      v.customize ["modifyvm", :id, "--name", "ddc3"]
    end

    ddc3.vm.provision "shell", path: "worker.sh"
  end

end