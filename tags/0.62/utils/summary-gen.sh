#!/bin/bash
#(C) Copyright 2010-2011 Nicholas Paun. All Rights Reserved.

echo -e "\n\n>>> Summary: <<<"
grep "* Backup" /tmp/backup-out.$$
rm /tmp/backup-out.$$
#echo -e "\n(Backup finished at `date '+%F %R'`)"
