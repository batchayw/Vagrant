# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    # Configuration pour Windows 11
    config.vm.define "windows_11" do |windows|
      windows.vm.box = "windows_11_custom"
      windows.vm.hostname = "windows11"
      windows.vm.network "private_network", ip: "192.168.56.10"
      windows.vm.provider "libvirt" do |v|
        v.memory = 2048
        v.cpus = 2
        v.storage :file, :size => '50G', :type => 'qcow2'
      end
      windows.vm.provision "shell", path: "scripts/provision.sh"
    end
  
    # Configuration pour Ubuntu 24.04
    config.vm.define "ubuntu_2404" do |ubuntu|
      ubuntu.vm.box = "generic/ubuntu2404"
      ubuntu.vm.hostname = "ubuntu2404"
      ubuntu.vm.network "private_network", ip: "192.168.56.20"
      ubuntu.vm.provider "libvirt" do |v|
        v.memory = 2048
        v.cpus = 2
        v.storage :file, :size => '20G', :type => 'qcow2'
      end
      ubuntu.vm.provision "shell", path: "scripts/provision.sh"
    end
  
    # Configuration pour Debian 12
    config.vm.define "debian_12" do |debian|
      debian.vm.box = "generic/debian12"
      debian.vm.hostname = "debian12"
      debian.vm.network "private_network", ip: "192.168.56.30"
      debian.vm.provider "libvirt" do |v|
        v.memory = 2048
        v.cpus = 2
        v.storage :file, :size => '20G', :type => 'qcow2'
      end
      debian.vm.provision "shell", path: "scripts/provision.sh"
    end
  
    # Configuration pour CentOS 10
    config.vm.define "centos_10" do |centos|
      centos.vm.box = "generic/centos10"
      centos.vm.hostname = "centos10"
      centos.vm.network "private_network", ip: "192.168.56.40"
      centos.vm.provider "libvirt" do |v|
        v.memory = 2048
        v.cpus = 2
        v.storage :file, :size => '20G', :type => 'qcow2'
      end
      centos.vm.provision "shell", path: "scripts/provision.sh"
    end
  end