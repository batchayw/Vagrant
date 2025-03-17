#!/bin/bash

# Tests de fonctionnalité pour CentOS 10
echo "Running functionality tests for CentOS 10..."

# Vérification de la connexion SSH
ssh -o ConnectTimeout=5 vagrant@192.168.56.40 echo "SSH connection successful!"

# Vérification de la disponibilité du serveur web
curl -I http://192.168.56.40

echo "Functionality tests for CentOS 10 completed!"