#!/usr/bin/env bash
# use puppet to connect (without password) 
# to make changes to config fie

file { '/etc/ssh/ssh_config':
	ensure => present,

content =>"
	# ssh client config.
	host*
	IdentityFile ~/.ssh/school
	PasswordAuthentication no
	",
}

# file_line {'Turn off passwrd auth':
#  path	=>  '/etc/ssh/ssh_config',
#  line	=> 'PasswordAuthentication no',
#  match	=> '^#PasswordAuthentication',
#}

# file_line {'Turn off passwrd auth':
#  path  => '/etc/ssh/ssh_config',
#  line  => 'IdentityFile ~/.ssh/school',
#  match => '^#IdentityFile',
# }
