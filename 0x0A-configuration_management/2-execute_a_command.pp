# This manifest kills a process named killmenow using pkill

exec { 'kill_killmenow':
  command => '/usr/bin/pkill -f killmenow || true',
  path    => ['/usr/bin', '/usr/sbin'],
  onlyif  => '/usr/bin/pgrep -f killmenow',
}
