#"3" だけ入力する。(引数が足りないのでエラーが出れば正常)
./saidai.sh mojimoji >/dev/null 2>&1
if [ $? -gt 0 ] ;
then
	echo "テストでエラーを発生させたにもかかわらずエラーが無いと判定されました。。。"
	exit 1
else
	exit 0
fi
