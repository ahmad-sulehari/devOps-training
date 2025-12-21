#!/usr/bin/env bash

# change date of log files to simulate older logs
target_dir="../logs"
echo "Rotating 2 log files in directory: $target_dir"
for file in $(find $target_dir/*.log | head -n 2);
do
    echo "Changing modification date of $file to 10 days ago."
    touch -d "10 days ago" $file
done

echo "finding files which were last modiferd before 7 days"

find ../logs/*.log -type f -mtime +7 -exec ls -l {} +

find ../logs/*.log -type f -mtime +7 -exec gzip -k {} +

find ../logs/*.log -type f -mtime +7 -exec ls -l {} +
