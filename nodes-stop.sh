#!/usr/bin/env bash

cd ./bitcoin

./node-0.sh stop
./node-1.sh stop

cd ..

cd ./zcash

./node-0.sh stop
./node-1.sh stop

pkill generate-loop.s
