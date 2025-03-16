# Configuration de base pour Ubuntu 24.04
class ubuntu_2404 {
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

include ubuntu_2404