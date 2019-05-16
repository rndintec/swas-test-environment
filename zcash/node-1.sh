#!/usr/bin/env bash

SDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

NODENUM=2

DATADIR=${SDIR}/datadir-node-1/

RPCPORTBASE=8232
RPCPORT=$NODENUM$RPCPORTBASE

zcash-cli -conf=${SDIR}/zcash.conf.regtest.stub \
            -rpcport=$RPCPORT \
            -rpcuser=intectest \
            -rpcpassword=2PLD4jvuy6Mgoy0QIf9BNafpFtkXN2bJCfh7b9pHwlQ= \
            -datadir=${DATADIR} "$@"
