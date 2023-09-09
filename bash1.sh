#!/bin/bash
mkdir attachments
for i in {0..2}
do
	response=$(curl https://api.thecatapi.com/v1/images/search)
	url=$( echo $response | awk -F "," '{print $2}' | awk -F "\"" '{print $4}' )
	name=$( echo $url | awk -F "/" '{print $NF}' )
	curl $url -L > attachments/$name
done
