# Configuration de base pour Windows 11
class windows_11 {
  # Installation de fonctionnalités de base
  windowsfeature { 'Web-Server':
    ensure => present,
  }

  # Configuration du pare-feu
  exec { 'Configure Firewall':
    command => 'netsh advfirewall set allprofiles state on',
    path    => 'C:/Windows/System32',
  }

  # Configuration de l'utilisateur administrateur
  user { 'admin':
    ensure   => present,
    password => 'P@ssw0rd',
  }
}

include windows_11