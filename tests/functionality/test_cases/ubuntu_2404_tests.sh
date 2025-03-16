#!/bin/bash

# Tests de fonctionnalité pour Ubuntu 24.04
echo "Running functionality tests for Ubuntu 24.04..."

# Vérification de la connexion SSH
ssh -o ConnectTimeout=5 vagrant@192.168.56.20 echo "SSH connection successful!"

# Vérification de la disponibilité du serveur web
curl -I http://192.168.56.20

echo "Functionality tests for Ubuntu 24.04 completed!"