# Fixing Apache 500 error return and then automate using puppet.


exec { 'fix php typo error':
  command => 'sed -i s/phpp/php/g /var/www/html/wp-settings.php',
  path    => '/usr/local/bin/:/bin/'
}
