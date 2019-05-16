#!/usr/bin/env bash

cd ./bitcoin

./node-1.sh generate 1

cd ..

cd ./zcash

./node-1.sh generate 1
