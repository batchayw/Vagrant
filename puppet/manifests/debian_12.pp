# Configuration de base pour Debian 12
class debian_12 {
  # Mise à jour du système
  exec { 'apt-get update':
    command => '/usr/bin/apt-get update',
  }

  # Installation de paquets de base
  package { ['apache2', 'curl', 'vim']:
    ensure => installed,
  }

  # Configuration du pare-feu
  exec { 'Configure Firewall':
    command => '/usr/sbin/ufw allow 22 && /usr/sbin/ufw allow 80 && /usr/sbin/ufw enable',
  }

  # Configuration de l'utilisateur administrateur
  user { 'admin':
    ensure   => present,
    password => '$6$randomsalt$hashedpassword',
  }
}

include debian_12