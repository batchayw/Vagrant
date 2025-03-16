# Installation et configuration de Logstash
class elk::logstash {
  package { 'logstash':
    ensure => installed,
  }

  service { 'logstash':
    ensure => running,
    enable => true,
  }

  file { '/etc/logstash/logstash.conf':
    ensure  => file,
    content => template('elk/logstash.conf.erb'),
  }
}

include elk::logstash