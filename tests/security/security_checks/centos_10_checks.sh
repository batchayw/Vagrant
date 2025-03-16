#!/bin/bash

# Tests de sécurité pour CentOS 10
echo "Running security checks for CentOS 10..."

# Vérification de la configuration du pare-feu
firewall-cmd --list-all

# Vérification de la désactivation de la connexion root
grep "PermitRootLogin no" /etc/ssh/sshd_config

echo "Security checks for CentOS 10 completed!"