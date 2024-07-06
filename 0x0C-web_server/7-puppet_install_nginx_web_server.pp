# 7-puppet_install_nginx_web_server.pp

exec { 'update_apt':
  command => '/usr/bin/apt-get update',
  path    => ['/usr/bin', '/usr/sbin', '/bin', '/sbin'],
}

package { 'nginx':
  ensure  => installed,
  require => Exec['update_apt'],
}

file { '/var/www/html/index.nginx-debian.html':
  ensure  => file,
  content => 'Hello World!',
  require => Package['nginx'],
}

file { '/etc/nginx/sites-available/default':
  ensure  => file,
  content => template('/alx-system_engineering-devops/0x0C-web_server/nginx/default.erb'),
  require => Package['nginx'],
}

service { 'nginx':
  ensure    => running,
  enable    => true,
  subscribe => File['/etc/nginx/sites-available/default'],
}

exec { 'nginx-reload':
  command     => '/usr/sbin/service nginx reload',
  refreshonly => true,
  subscribe   => File['/etc/nginx/sites-available/default'],
}
