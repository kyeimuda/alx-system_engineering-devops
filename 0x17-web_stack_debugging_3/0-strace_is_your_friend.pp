#Using strace to find why Apache is returning a 500 error. fix it and puppet

file { '/var/www/html/wp-includes/class-wp-locale.phpp':
  ensure => file,
  source => '/var/www/html/wp-includes/class-wp-locale.php',
}
