#!/bin/bash

# Tests de sécurité pour Ubuntu 24.04
echo "Running security checks for Ubuntu 24.04..."

# Vérification de la configuration du pare-feu
ufw status

# Vérification de la désactivation de la connexion root
grep "PermitRootLogin no" /etc/ssh/sshd_config

echo "Security checks for Ubuntu 24.04 completed!"