#!/usr/bin/env bash
# Puppet manifesto to make configuration changes to file

file { 'ect/ssh/ssh_config':
        ensure => present,
        content =>

	#SSH client configuration
	host*
	IdentityFile ~/.ssh/school
	PasswordAuthentication no
}
