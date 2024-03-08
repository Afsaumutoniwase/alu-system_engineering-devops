# Puppet manifest to configure SSH client
include stdlib
# Ensure the SSH client configuration file exists
file { '/home/ubuntu/.ssh/config':
  ensure => present,
  owner  => 'ubuntu',
  group  => 'ubuntu',
}

# Configure SSH client to use the private key ~/.ssh/school
file_line { 'Declare identity file':
  ensure => present,
  path   => '/home/ubuntu/.ssh/config',
  line   => 'IdentityFile ~/.ssh/school',
}

# Configure SSH client to refuse authentication using a password
file_line { 'Turn off passwd auth':
  ensure => present,
  path   => '/home/ubuntu/.ssh/config',
  line   => 'PasswordAuthentication no',
}

