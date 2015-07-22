#!/bin/bash

#######################################
### proc_monitor.sh
### author: Shiqing Cheng
### email:  shiqing@deepglint.com
### version:
#####################################

while [ 1 ]
do
    for procname in libra muxlab  #需要检测的进程名字
    do 
         procID=`pgrep $procname`
		 time=$(date +%F-%T)
		 echo $procname $procID 
         if [ "" == "$procID" ]; then
			  time=$(date +%F-%T)
              echo $time: $procname does not exit > Libra.proc_moinitor.log.$time
			  exit
         fi
    done
    sleep 1
done 
