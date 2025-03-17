class log_manager::rsyslog {
  package { 'rsyslog':
    ensure => installed,
  }
 
  service { 'rsyslog':
    ensure  => running,
    enable  => true,
    require => Package['rsyslog'],
  }
 
  file { '/etc/rsyslog.d/custom_log.conf':
    ensure  => file,
    content => "*.info /var/log/custom.log\n",
    notify  => Service['rsyslog'],
  }
}

include log_manager::rsyslog