#!/bin/bash

DIR="$(dirname "$0")"
source $DIR/env.sh
source $DIR/common.sh

runenv "/home/ubuntu/git/bin/receiver -port 10001" "/usr/local/bin/v2ray  run  -config=$TEST_DIR/v2ray_doko_vmess.json" "/usr/local/bin/v2ray run -config=$TEST_DIR/v2ray_vmess_free.json"
sleep 2
/home/ubuntu/git/bin/loadgen -amount=10

echo "Finishing"
sleep 2
killpids
