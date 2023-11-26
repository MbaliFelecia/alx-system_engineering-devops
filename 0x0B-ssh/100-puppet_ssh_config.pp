#!/usr/bin/env puppet
# Puppet manifest to make configuration changes to the file

file { '/etc/ssh/ssh_config':
  ensure  => present,
  content => "\
# SSH client configuration
Host *
  IdentityFile ~/.ssh/school
  PasswordAuthentication no
",
}
