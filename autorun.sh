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
