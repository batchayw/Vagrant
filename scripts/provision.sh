#!/bin/bash

# Provisionnement des VMs
echo "Starting provisioning..."

# Installation de Puppet
if [ -f /etc/redhat-release ]; then
  sudo yum install -y puppet
elif [ -f /etc/debian_version ]; then
  sudo apt-get update
  sudo apt-get install -y puppet
fi

# Application des configurations Puppet
sudo puppet apply /vagrant/puppet/manifests/windows_11.pp
sudo puppet apply /vagrant/puppet/manifests/ubuntu_2404.pp
sudo puppet apply /vagrant/puppet/manifests/debian_12.pp
sudo puppet apply /vagrant/puppet/manifests/centos_10.pp

echo "Provisioning completed!"