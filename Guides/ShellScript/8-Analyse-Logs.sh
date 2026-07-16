#!/bin/bash

LOG_DIRECTORY="/mnt/c/Repository/Docker-Handout/Guides/ShellScript/Target"

ERROR_PATTERNS=("ERROR" "FATAL" "CRITICAL")

echo "============================================================="
echo "LOG FILES ANALYSIS"
echo "============================================================="

echo "List of log files in Target Directory: "
LOG_FILES=$(find $LOG_DIRECTORY -name "*.log" -printf '%f\n')
echo -e "$LOG_FILES\n"

for LOG_FILE in $LOG_FILES
do
    echo "-------------------------------------------------------------"
    echo $"Analysing file: $LOG_FILE"
    echo "-------------------------------------------------------------"
    for PATTERN in ${ERROR_PATTERNS[@]}
    do
        echo "Analysing $PATTERN"
        TOTAL=$(grep -c $PATTERN "$LOG_DIRECTORY/$LOG_FILE")
        echo -e "Totalnya: $TOTAL"
        grep $PATTERN "$LOG_DIRECTORY/$LOG_FILE"
        echo "***********************************************************************************************"
        echo
    done
    echo
done