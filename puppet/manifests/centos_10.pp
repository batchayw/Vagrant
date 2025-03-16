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
    # hach du mot de passe (P@ssw0rd) avec SHA-512
    password => '$6$randomsalt$gRyjVZeF5LHbXLKdrDmEkLyAHK3Bn4aftU4xZtVS4Fs/TXDO4ZD2U5D.0PkTt4ZXVP48b8VlUIksMN.pg7u3c.',
  }
}

include centos_10