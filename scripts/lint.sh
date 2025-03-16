#!/bin/bash

# Vérification de la syntaxe des scripts et des manifestes Puppet
echo "Linting scripts and Puppet manifests..."

# Vérification des scripts Shell
shellcheck scripts/*.sh

# Vérification des manifestes Puppet
puppet-lint puppet/manifests/*.pp

echo "Linting completed!"