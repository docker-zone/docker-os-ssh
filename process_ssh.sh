#!/bin/sh

## generate files
generate_folder()
{
	if [ ! -d $1 ]; 
	then
		mkdir -p $1
	fi
}

generate_folder /app/tools/sshd;
generate_folder /var/run/sshd;

## generate host key
generate_host_key()
{
	if [ ! -f /etc/ssh/$1 ];
	then
		ssh-keygen -q -N '' -t rsa -f /etc/ssh/$1
	fi
}

generate_host_key ssh_host_ecdsa_key;
generate_host_key ssh_host_ed25519_key;
generate_host_key ssh_host_rsa_key;
generate_host_key ssh_host_dsa_key;

## process root user
sed -ri 's/root:!::0:::::/root:*::0:::::/g' /etc/shadow

## process sshd config
sed -ri 's/#PermitRootLogin\s+yes/PermitRootLogin yes/g' /etc/ssh/sshd_config
sed -ri 's/#PermitRootLogin\s+prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config
sed -ri 's/PermitRootLogin\s+without-password/PermitRootLogin yes/g' /etc/ssh/sshd_config
sed -ri 's/PermitRootLogin\s+prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config
