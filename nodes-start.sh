#!/usr/bin/env bash

SDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

./bitcoin/start-node-0.sh
./bitcoin/start-node-1.sh


setsid ./bitcoin/generate-loop.sh ${SDIR} >/dev/null 2>&1 < /dev/null &

./zcash/start-node-0.sh
./zcash/start-node-1.sh

setsid ./zcash/generate-loop.sh ${SDIR} >/dev/null 2>&1 < /dev/null &
