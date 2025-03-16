#!/bin/bash

# Tests de fonctionnalité pour Windows 11
echo "Running functionality tests for Windows 11..."

# Vérification de la connexion SSH
ssh -o ConnectTimeout=5 vagrant@192.168.56.10 echo "SSH connection successful!"

# Vérification de la disponibilité du serveur web
curl -I http://192.168.56.10

echo "Functionality tests for Windows 11 completed!"