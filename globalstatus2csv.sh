#!/bin/bash
while :
do
        mysql -u root -p$1 -e "SHOW GLOBAL STATUS;" | python tab2csv_row >> mysql.log
        sleep 1
done
