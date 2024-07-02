# client SSH configuration file so can connect to a server without a password.
file { '/root/.ssh/config':
  ensure  => 'file',
  owner   => 'root',
  group   => 'root',
  mode    => '0600',
  content => 'Host your_server_alias
    HostName 35.174.176.31
    User ubuntu
    IdentityFile /root/.ssh/school
    PasswordAuthentication no',
}

