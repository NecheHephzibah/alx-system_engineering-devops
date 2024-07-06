# Ensure the .ssh directory exists with the correct permissions
file { '/root/.ssh':
  ensure  => 'directory',
  owner   => 'root',
  group   => 'root',
  mode    => '0700',
}

# Ensure the SSH config file exists with the correct content and permissions
file { '/root/.ssh/config':
  ensure  => 'file',
  owner   => 'root',
  group   => 'root',
  mode    => '0600',
  content => template('ssh/config.erb'),
}
