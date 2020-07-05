#!/bin/bash

#2と4を入れてテストを実行する
res=$(./saidai.sh 2 4)

if [ $res -eq 2 ]
then
	exit 0
else
	echo "ERROR"
	exit 1
fi
