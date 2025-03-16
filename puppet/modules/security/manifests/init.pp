# Configuration de sécurité commune à toutes les VMs
class security {
  # Désactivation de la connexion root
  file_line { 'disable_root_login':
    path => '/etc/ssh/sshd_config',
    line => 'PermitRootLogin no',
  }

  # Configuration de SELinux (pour CentOS)
  if $::osfamily == 'RedHat' {
    exec { 'setenforce 1':
      command => '/usr/sbin/setenforce 1',
    }
  }

  # Configuration de l'auditd (pour Debian/Ubuntu)
  if $::osfamily == 'Debian' {
    package { 'auditd':
      ensure => installed,
    }

    service { 'auditd':
      ensure => running,
      enable => true,
    }
  }
}

include security