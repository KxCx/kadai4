#!/bin/bash

#2と4を入れてテストを実行する
./saidai.sh 2 4 > ./tempdir/result-$$
echo "2" > ./tempdir/ans-$$

diff ./tempdir/ans-$$ ./tempdir/result-$$ || exit 1


echo "Complete!"
