#!/bin/bash
#auto delete libra log 

# crontab -u root -e 
#48 * * * *  deletelog.sh
find /libra/logs/  -mmin +120 -name "Libra*.log*" -exec rm -rf {} \;
#time=$(date +%c)
#echo $time >> test.log
