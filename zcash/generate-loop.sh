#!/bin/bash

SDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

while true;
do
${SDIR}/node-1.sh generate 1 > /dev/null;
sleep 60;
done
