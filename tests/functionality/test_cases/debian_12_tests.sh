#!/bin/bash

# Tests de fonctionnalité pour Debian 12
echo "Running functionality tests for Debian 12..."

# Vérification de la connexion SSH
ssh -o ConnectTimeout=5 vagrant@192.168.56.30 echo "SSH connection successful!"

# Vérification de la disponibilité du serveur web
curl -I http://192.168.56.30

echo "Functionality tests for Debian 12 completed!"