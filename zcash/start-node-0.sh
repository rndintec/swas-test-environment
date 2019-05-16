#!/usr/bin/env bash

SDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

NODENUM=1
NEXTNODENUM=2

DATADIR=${SDIR}/datadir-node-0/

PORTBASE=8233
RPCPORTBASE=8232

PORT=$NODENUM$PORTBASE
RPCPORT=$NODENUM$RPCPORTBASE

zcashd -conf=${SDIR}/zcash.conf.regtest.stub \
        -datadir=${DATADIR} \
        -daemon=1 -server=1 -rpcuser=intectest -rpcpassword=2PLD4jvuy6Mgoy0QIf9BNafpFtkXN2bJCfh7b9pHwlQ= \
        -rpcport=$RPCPORT -regtest=1 -port=$PORT -addnode=localhost:$NEXTNODENUM$PORTBASE \
        -nuparams=5ba81b19:5 \
        -nuparams=76b809bb:10
