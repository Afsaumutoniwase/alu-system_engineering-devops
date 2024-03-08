#!/usr/bin/env bash
#Script to use puppet to make change on the config file

include stdlib
file_line { 'private keyphers':
ensure => present,
path   => '/etc/ssh/ssh_config',
line   => 'IdentityFile ~/.ssh/school',
}
file_line { 'refuse authenticate using a password':
ensure => present,
path   => '/etc/ssh/ssh_config',
line   => 'PasswordAuthentication no',
}
