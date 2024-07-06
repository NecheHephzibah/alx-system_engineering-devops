# Ensure the Nginx package is installed
package { 'nginx':
  ensure => installed,
}

# Ensure the Nginx service is running and enabled to start at boot
service { 'nginx':
  ensure    => running,
  enable    => true,
  require   => Package['nginx'],
}

# Create the index page with "Hello World!" content
file { '/var/www/html/index.nginx-debian.html':
  ensure  => file,
  content => "Hello World!\n",
  require => Package['nginx'],
}

# Configure the Nginx server block to include the 301 redirect
file { '/etc/nginx/sites-available/default':
  ensure  => file,
  content => template('/alx-system_engineering-devops/0x0C-web_server/nginx/default.erb'),
  require => Package['nginx'],
  notify  => Service['nginx'],  # Notify the Nginx service to restart if this file changes
}

# Verify Nginx configuration and reload the service if necessary
exec { 'nginx-reload':
  command     => '/usr/sbin/nginx -s reload',
  refreshonly => true,
  subscribe   => File['/etc/nginx/sites-available/default'],
}
