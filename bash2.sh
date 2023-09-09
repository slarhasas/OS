#!/bin/bash
list=$(ls attachments)
for filename in $list
do
	rm attachments/$filename
done
