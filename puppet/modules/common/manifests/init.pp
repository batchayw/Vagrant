# Configuration commune à toutes les VMs
class common {
  # Synchronisation de l'heure avec NTP
  package { 'ntp':
    ensure => installed,
  }

  service { 'ntp':
    ensure => running,
    enable => true,
  }

  # Configuration de la synchronisation de dossiers
  file { '/vagrant':
    ensure => directory,
    mode   => '0777',
  }
}

include common