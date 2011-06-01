class apticron (
  $email = 'root'
) {
  package { 'apticron':
    ensure => installed,
  }

  file { '/etc/apticron/apticron.conf':
    owner   => root,
    group   => root,
    mode    => '0600',
    content => template('apticron/apticron.conf.erb'),
    require => Package['apticron'],
  }
}
