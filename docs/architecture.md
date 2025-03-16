# Architecture du Projet

Ce document décrit l'architecture du projet.

## Machines Virtuelles

- **Windows 11** : 2 vCPU, 2 Go RAM, 50 Go disque.
- **Ubuntu 24.04** : 2 vCPU, 2 Go RAM, 20 Go disque.
- **Debian 12** : 2 vCPU, 2 Go RAM, 20 Go disque.
- **CentOS 10** : 2 vCPU, 2 Go RAM, 20 Go disque.

## Hyperviseur

Utilisation de KVM/QEMU et VirtManager pour la gestion des VMs.

## Provisionnement

Provisionnement automatisé via Puppet avec des modules pour :
- Configurations communes
- Sécurité
- Monitoring
- Déploiement d'ELK Stack

## Pipeline CI/CD

Utilisation de GitHub Actions pour automatiser :
- Linting et tests des scripts et manifestes Puppet
- Provisionnement des VMs
- Tests de fonctionnalité et de sécurité
- Notifications par Gmail
