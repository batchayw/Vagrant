# Configuration de monitoring commune à toutes les VMs
class monitoring {
  # Installation de Prometheus Node Exporter
  package { 'prometheus-node-exporter':
    ensure => installed,
  }

  service { 'prometheus-node-exporter':
    ensure => running,
    enable => true,
  }

  # Installation de Fluentd pour la collecte des logs
  package { 'td-agent':
    ensure => installed,
  }

  service { 'td-agent':
    ensure => running,
    enable => true,
  }
}

include monitoring