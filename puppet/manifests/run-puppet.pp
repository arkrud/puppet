# Set up regular Puppet runs
file { '/usr/local/bin/run-puppet':
  source => '/etc/puppetlabs/code/environments/puppet/puppet/files/run-puppet.sh',
  mode   => '0755',
}

file { '/tmp/test.txt':
  content => 'Testing puppet',
  mode   => '0755',
}


cron { 'run-puppet':
  command => '/usr/local/bin/run-puppet',
  hour    => '*',
  minute  => '*/15',
}
