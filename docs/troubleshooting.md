# Guide de Dépannage

## 1. Problèmes de Provisionnement

- Vérifier que Puppet est installé.
- Vérifier les logs de provisionnement dans `/var/log/vagrant`.

## 2. Problèmes de Connexion SSH

- Vérifier que le service SSH est actif.
- Vérifier les règles du pare-feu.

## 3. Problèmes de Monitoring

- Vérifier que Prometheus et Grafana sont en cours d'exécution.
- Vérifier les logs de Fluentd/ryslogs.
- Vérifier qu'Elasticsearch est en cours d'exécution et accessible

## 4. Échec de la pipeline CI/CD  
- Consulter les logs des workflows GitHub Actions pour identifier la source du problème.
- Vérifier les scripts dans le répertoire `ci-cd/`

## 5. Notifications Gmail non envoyées  
- Vérifier la configuration du script `gmail_notification.sh` ainsi que la validité des clés secrètes `GMAIL_USER` et `GMAIL_PASSWORD` configurées dans GitHub.
