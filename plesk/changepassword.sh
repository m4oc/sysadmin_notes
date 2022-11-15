#! /bin/bash
#Usage: changepassword.sh <FILTER> 
#Example: changepassword.sh domain.com (change all password for this domain's mailboxs)
#Example: changepassword.sh pippo@domain.com (change password for this mailbox)

if [ $# -ne 1 ]; then
        echo "no filter specified";
        echo "---------------------------------------------------------";
        echo "<usage> $0 <nome_dominio>";
	echo "Usage: changepassword.sh <FILTER> "
	echo "Example: changepassword.sh domain.com (change all password for this domain's mailboxs)"
	echo "Example: changepassword.sh pippo@domain.com (change password for this mailbox)"
        exit;
fi

for MAILBOX in `plesk sbin mail_auth_view | grep $1 | awk '{print $2}'` ; do PASSWORD=`echo $RANDOM |  uuencode -m - | sed -ne 2p | cut -c-12` ; plesk bin mail -u $MAILBOX -passwd $PASSWORD ; done
