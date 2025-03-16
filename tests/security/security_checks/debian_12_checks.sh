#!/bin/bash

# Tests de sécurité pour Debian 12
echo "Running security checks for Debian 12..."

# Vérification de la configuration du pare-feu
ufw status

# Vérification de la désactivation de la connexion root
grep "PermitRootLogin no" /etc/ssh/sshd_config

echo "Security checks for Debian 12 completed!"