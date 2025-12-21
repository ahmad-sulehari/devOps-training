#!/usr/bin/env bash
# This script lists all files in the current directory and shows their disk usage.
echo "Listing all files in the current directory:"
ls -lh
echo ""
echo "Disk usage of each file:"
du -h *

# This script archives log files from a specified directory and displays the last N lines of each log file.

working_dir="devops-training-capstone"

if [[ $PWD =~ "$working_dir"$ ]]; then
	target_dir="./logs/"
else
	target_dir="../logs/"
fi

echo "The workign dir is $PWD and target dir path set for logs is $target_dir"


echo "checking if target directory exists"

if [[ ! -d $target_dir ]]; then
	echo "The dir $target_dir doesn't exist or the path isn't correct"
	echo "Creating directory as a sibling of current directory $PWD"
	mkdir $target_dir
	if [[ ! -d $target_dir ]]; then
		echo "unable to create directory for some reason"
		exit 1
	else
		echo "directory created"
	fi
fi
		
prefix_path=$(echo $target_dir | cut -d "/" -f1)
echo $prefix_path | grep "logs"


echo "creating some dummy log files under $target_dir"
python3 $prefix_path/logs_generator.py --count 1000 --target-dir $target_dir
python3 $prefix_path/logs_generator.py --count 500 --target-dir $target_dir
python3 $prefix_path/logs_generator.py --count 1500 --target-dir $target_dir

echo "Archiving log files from directory: $target_dir"

tar -cvf $target_dir/log_archive.tar $target_dir/*.log


echo "how many end lines to dislay per file?"
read lines_count 


for file in $(find $target_dir/*.log);
do
    echo "Displaying last $lines_count lines of $file:"
    tail -n $lines_count "$file"
done
