# Configuration de base pour CentOS 10
class centos_10 {
  # Mise à jour du système
  exec { 'yum update':
    command => '/usr/bin/yum update -y',
  }

  # Installation de paquets de base
  package { ['httpd', 'curl', 'vim']:
    ensure => installed,
  }

  # Configuration du pare-feu
  exec { 'Configure Firewall':
    command => '/usr/bin/firewall-cmd --permanent --add-service=http && /usr/bin/firewall-cmd --reload',
  }

  # Configuration de l'utilisateur administrateur
  user { 'admin':
    ensure   => present,
    password => '$6$randomsalt$hashedpassword',
  }
}

include centos_10