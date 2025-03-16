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
    # hach du mot de passe (P@ssw0rd) avec SHA-512
    password => '$6$randomsalt$gRyjVZeF5LHbXLKdrDmEkLyAHK3Bn4aftU4xZtVS4Fs/TXDO4ZD2U5D.0PkTt4ZXVP48b8VlUIksMN.pg7u3c.',
  }
}

include ubuntu_2404