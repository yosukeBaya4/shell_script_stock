#!/bin/bash

########################################
# Author: Yosuke.N
# Date: 20190120
# purpose:
# usage: sh ctl_tbl_check.sh $1 $2
#           #$1 = description of 1st argument 
#           #$2 = description of 2nd argument
########################################

### expand config file and set parameters

TIMESTAMP=`date '+%Y%m%d%H%M'`

TARGET_DIR='XXXX'
TARGET_file='XXXX'

# create log-file
LOG_DIR=/home/ec2-user/environment/etl-work/red-batch/load/exec-bookmark/log/
touch $LOG_DIR/file.$TIMESTAMP.log
LOGFILE=${LOG_DIR}/file.$TIMESTAMP.log


# check the existance of cf-file
CF_FILE=/home/ec2-user/environment/etl-work/red-batch/load/exec-bookmark/conf/ctl_tbl_chec.cf
if [[ -f $CF_FILE ]]; then
        source ${CF_FILE}; 
    else  
        echo "##########################" >> ${LOGFILE} 2>&1
        echo "CF_FILE is not exists" >> ${LOGFILE} 2>&1
        echo "##########################" >> ${LOGFILE} 2>&1
        exit 1
fi 


### Main ETL consequence ###
