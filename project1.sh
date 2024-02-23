#!/bin/bash
#excerise project to work on aws
function upload(){

	bucket="s3://"
	read -p "provide the bucket name: " bucket_name
	
	read -p "provide the file path (on a separate terminal use pwd and paste here the result): " source_file

	if [ -f $source_file ]; then
		echo "file exist"
	else
		echo "file doesn't exist"
	fi

	filename=${source_file##*"/"}

	aws s3 cp $source_file $bucket$bucket_name | pv
		
	if [ $? -eq 0 ]; then
		echo "the file was uploaded correctly."
	else
		echo "there was an error."
	fi	

	separator="/"
		
	combined_string="$bucket$bucket_name$separator$filename"
	
	echo "link (it will expire in 1 hour): "
	echo $(aws s3 presign $combined_string --expires-in 3600)
}

upload
