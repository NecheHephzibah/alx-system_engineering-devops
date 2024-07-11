# Ensure the SSH config directory exists
file { '/root/.ssh':
  ensure => directory,
  mode   => '0700',
}

# Ensure the SSH config file exists with the correct content
file { '/root/.ssh/config':
  ensure  => file,
  mode    => '0600',
  content => template('/root/.ssh/templates/config.erb'),
}

# Turn off password authentication
file_line { 'Turn off passwd auth':
  path  => '/root/.ssh/config',
  line  => '    PasswordAuthentication no',
  match => '^ *PasswordAuthentication',
}

# Declare the identity file
file_line { 'Declare identity file':
  path  => '/root/.ssh/config',
  line  => '    IdentityFile /root/.ssh/school',
  match => '^ *IdentityFile',
}
