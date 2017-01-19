#!/bin/bash

source /opt/local/gnocci/script/build-support.sh

eval_knieval rbenv\ update\ \>\ /dev/null
eval_knieval rbenv\ download\ 2.2.0\ \&\&\ rbenv\ use\ 2.2.0\ \&\&\ rbenv\ rehash
eval_knieval ./setup.sh
eval_knieval bundle\ exec\ rake\ prepare
eval_knieval bundle\ exec\ rake\ deploy
