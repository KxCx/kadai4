#!/bin/bash

#最小公倍数を出力するシェルスクリプトです
#最大公約数ができるなら、これもできるのでは？という興味で作成しております

for i in `seq 100`
do
	let j=$1
	let k=$2
	let l=$j*$i
	let m=$k*$i
	array1+=($l)
	array2+=($m)
done

#動作確認用(運用時コメントアウト)
# echo ${array1[@]}
# echo ${array2[@]}


#ここから、2値を比較して同値を新しい配列"array3"に格納する
for p in ${array1[@]}; do
	for q in ${array2[@]}; do
		if [ "${p}" = "${q}" ]; then
			array3+=(${p})
		fi
	done
done

#ここから、配列に入った値から最小のもの(=最小公倍数)を出力する

echo ${array3[0]}
