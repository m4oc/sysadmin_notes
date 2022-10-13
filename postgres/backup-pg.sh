#! /bin/bash
#proudly scripted by Francesco Cirelli 
DBUSER=<USER>
PGPASSWORD=<PASSWORD>
DB=<DB>
DATA=`/bin/date +"%u"`
BKPATH="<EXAMPLE/PATH>"

if [ $USER != $DBUSER ];then
        echo "please run as $DBUSER"
        exit 1
else

        pg_dump -U $DBUSER $DB > $BKPATH/$DB-$DATA-dump.sql
        /bin/gzip -f $BKPATH/$DB-$DATA-dump.sql
        sleep 5 
fi
exit 0
