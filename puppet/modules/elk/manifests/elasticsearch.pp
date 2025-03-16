# Installation et configuration d'Elasticsearch
class elk::elasticsearch {
  package { 'elasticsearch':
    ensure => installed,
  }

  service { 'elasticsearch':
    ensure => running,
    enable => true,
  }

  file { '/etc/elasticsearch/elasticsearch.yml':
    ensure  => file,
    content => template('elk/elasticsearch.yml.erb'),
  }
}

include elk::elasticsearch