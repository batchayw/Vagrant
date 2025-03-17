#!/bin/bash

# Ajouter le hostname au fichier hosts
echo "127.0.0.1 $(hostname)" | sudo tee -a /etc/hosts

# Mise à jour des paquets
if [ -f /etc/debian_version ]; then
  sudo apt-get update --fix-missing
  sudo apt-get install -y wget gnupg

  # Installation Puppet sur Debian/Ubuntu
  wget https://apt.puppet.com/puppet-release-focal.deb
  sudo dpkg -i puppet-release-focal.deb
  sudo apt-get update
  sudo apt-get install -y puppet-agent

elif [ -f /etc/redhat-release ]; then
  sudo yum install -y puppet
fi

# Ajout du PATH Puppet
export PATH=/opt/puppetlabs/bin:$PATH

# Déterminer le nom du fichier Puppet manifest en fonction du hostname
HOSTNAME=$(hostname)
if [[ "$HOSTNAME" == "centos10" ]]; then
  PUPPET_FILE="centos_10.pp"
elif [[ "$HOSTNAME" == "ubuntu2404" ]]; then
  PUPPET_FILE="ubuntu_2404.pp"
elif [[ "$HOSTNAME" == "debian12" ]]; then
  PUPPET_FILE="debian_12.pp"
else
  PUPPET_FILE="${HOSTNAME}.pp"
fi

# Application des manifests Puppet avec Hiera
sudo puppet apply --modulepath=/vagrant/puppet/modules --hiera_config=/vagrant/puppet/hiera.yaml "/vagrant/puppet/manifests/$PUPPET_FILE"

echo "Provisioning completed!"