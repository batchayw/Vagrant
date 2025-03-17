class log_manager::fluentd {
  package { 'fluentd':
    ensure => installed,
  }
 
  service { 'fluentd':
    ensure  => running,
    enable  => true,
    require => Package['fluentd'],
  }
 
  file { '/etc/fluentd.d/custom_log.conf':
    ensure  => file,
    content => "*.info /var/log/custom.log\n",
    notify  => Service['fluentd'],
  }
}

include log_manager::fluentd 