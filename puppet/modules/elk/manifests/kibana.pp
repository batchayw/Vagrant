# Installation et configuration de Kibana
class elk::kibana {
  package { 'kibana':
    ensure => installed,
  }

  service { 'kibana':
    ensure => running,
    enable => true,
  }

  file { '/etc/kibana/kibana.yml':
    ensure  => file,
    content => template('elk/kibana.yml.erb'),
  }
}

include elk::kibana