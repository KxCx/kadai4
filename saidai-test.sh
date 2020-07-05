#!/bin/bash

#2と4を入れてテストを実行する
./saidai.sh 2 4 > /tmp/result-$$
echo "2" > /tmp/ans-$$

diff /tmp/ans-$$ /tmp/result-$$ || exit 1


echo "Complete!"
