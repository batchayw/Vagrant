#!/bin/bash

# Tests de sécurité pour Windows 11
echo "Running security checks for Windows 11..."

# Vérification de la configuration du pare-feu
netsh advfirewall show allprofiles

# Vérification de la désactivation de la connexion root
grep "PermitRootLogin no" /etc/ssh/sshd_config

echo "Security checks for Windows 11 completed!"