#!/bin/bash

rm $GOPATH/bin/loadgen
rm $GOPATH/bin/receiver

go install github.com/v2ray/experiments/benchmark/loadgen@latest
go install github.com/v2ray/experiments/benchmark/receiver@latest
