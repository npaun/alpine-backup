#!/bin/bash
#(C) Copyright 2010 Nicholas Paun. All Rights Reserved.

SERVERS="foobackup1 foobackup2 foo-offsite" #Set your backup servers here


echo -e "\e[00;32mYour System\e[00m"
echo "Hostname: $HOST"
echo "Date: `date`"
echo "PHP Version: `php -v`" || (echo "No PHP"; exit 1)

echo -e "\n\e[00;32mYour Crontab\e[00m"
grep "alp" /etc/crontab

if [[ $1 = "-n" ]]; then
 echo -e "\n(NO SYNCING)"
 exit 0
fi

echo -e "\n\e[00;32mConfiguration File Sync\e[00m"

for server in $SERVERS; do
echo -e "\n\e[01;00mSyncing to $server:\e[00m"
rsync -av /alpine-backup $server:/
done
