#!/bin/bash
(ls count >> /dev/null 2>&1 && a=1) || a=0
if [ "$a" == 0 ]
then
	echo " firsttime"
	touch count
   ./script.sh
else
	echo " secondtime"
	git add .
	git commit -a --allow-empty-message -m ''
	filename=`cat config`
	echo $filename
	git push https://Kaushik-infosec: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@github.com/Kaushik-infosec/${filename}"-.git" --all
fi
