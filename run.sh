#!/bin/bash

if [ ! -f /app/tools/sshd/.root_passwd_created ];
then 
    if [ ! "${AUTHORIZED_KEYS}" ];
    then
		## do regular password instead 
		if [ ! "${ROOT_PASS}" ];
		then
			echo "Generating password for root"
			PASS=$(pwgen -s 12 1)
			echo "Generated password for root is: ${PASS}"
		else
			PASS=${ROOT_PASS}
		fi
		echo "Setting password for root"
		echo "root:${PASS}" | chpasswd

		echo "---------------------------------------------"
		echo "ssh root@host"
		echo "put in password above"
		echo "Remember to change the password immediately!"
		echo "---------------------------------------------"
	else
		## put in authorized key
		echo "Adding authorized_keys file"
		mkdir -p /root/.ssh
		chmod 700 /root/.ssh
		cat ${AUTHORIZED_KEYS} > /root/.ssh/authorized_keys
		chmod 600 /root/.ssh/authorized_keys
	fi
	touch /app/tools/sshd/.root_passwd_created
fi

/usr/sbin/sshd