#!/bin/bash

#このシェルスクリプトでは、2020年1Q課題4の最大公約数を求める
#なお、求めるに際して、ユークリッドの互除法を用いる

#はじめに、入力値が数値であるかの確認を行う
key1=$1
if ! [[ "$key1" =~ ^[0-9]+$ ]]
then
	echo "数値を入力してください"
fi

#次に入力値が同値であるかの判定を行う
#同値の場合、その値が最大公約数のため

key2=$2
if [ "$key1" -eq "$key2" ]
then
	ans="$key1"
#第一引数が第二引数より小さかった場合、数値の入れ替えを行う
else
	if [ "$key1" -lt "$key2" ]
	then
		tmp=$key1
		key1=$key2
		key2=$tmp
	fi
fi

#上記までで下準備が完了
#ここからユークリッドの互除法をつかって解く

arg1=$key1
arg2=$key2

amari=`expr $arg1 % $arg2`
while [ $amari -ne 0 ]
do
	arg1=$arg2
	arg2=$amari
	amari=`expr $arg1 % $arg2`
done
ans=$arg2
echo "$ans"



