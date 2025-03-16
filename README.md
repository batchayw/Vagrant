# Vagrant Project

Ce projet vise à automatiser la création de 4 machines virtuelles (Windows 11, Ubuntu 24.04, Debian 12, CentOS 10) en utilisant Vagrant et KVM/QEMU. Il inclut également une pipeline CI/CD pour le déploiement, la gestion des logs, le monitoring et les notifications.

## Structure du Projet

- **Vagrantfile** : Configuration des VMs.
- **puppet/** : Configuration Puppet pour le provisionnement.
- **scripts/** : Scripts pour l'automatisation.
- **logs/** : Configuration de la gestion des logs.
- **monitoring/** : Configuration du monitoring.
- **elk/** : Configuration d'ELK Stack.
- **ci-cd/** : Configuration du pipeline CI/CD.
- **tests/** : Tests de fonctionnalité et de sécurité.
- **docs/** : Documentation du projet.

## Notes

- Pour des raisons organisationnelles ou de compatibilité, si voulez que votre pipeline CI/CD ce lance après un `git push`, il faut créer il lien symbolique en utilisant : 
```bash
ln -s ../../ci-cd/github/workflows/main.yml .github/workflows/main.yml
ls -l .github/workflows/   # Vérifie si le lien symbolique fonctionne bien
``` 
 **NB**: ***noter que votre fichier original pour la pipeline CI/CD sera `/ci-cd/github/workflows/main.yml` apès cela.***

 ## Auteur

- ***William BATCHAYON*** - `@batchayw`

## Contribution

Les contributions sont les bienvenues ! Pour contribuer:

- Forkez le projet.
- Créez une branche pour votre fonctionnalité (`git checkout -b feature/nouvelle-fonctionnalite`).
- Committez vos changements (`git commit -am 'Ajouter une nouvelle fonctionnalité'`).
- Poussez la branche (`git push origin feature/nouvelle-fonctionnalite`).
- Ouvrez une Pull Request.


 ## Licence

Ce projet est sous licence MIT. Voir le fichier **LICENSE** pour plus de détails.