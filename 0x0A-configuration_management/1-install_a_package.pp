# This manifest installs Flask version 2.1.0 and a compatible version of Werkzeug using pip3

package { 'python3-pip':
  ensure => installed,
}

exec { 'install_flask_and_werkzeug':
  command => '/usr/bin/pip3 install flask==2.1.0 werkzeug==2.0.3',
  path    => ['/usr/bin', '/usr/sbin'],
  require => Package['python3-pip'],
}
