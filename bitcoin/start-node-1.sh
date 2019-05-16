#!/usr/bin/env bash

SDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

NODENUM=2
NEXTNODENUM=1

DATADIR=${SDIR}/datadir-node-1/

PORTBASE=8333
RPCPORTBASE=8332

PORT=$NODENUM$PORTBASE
RPCPORT=$NODENUM$RPCPORTBASE

bitcoind -conf=${SDIR}/bitcoin.conf.regtest.stub \
        -datadir=${DATADIR} \
        -daemon=1 -server=1 \
        -rpcauth='intectest:9e66e142b6a2b63684a1287d3aa98$ffcf8ef0982a0567112eaddb052353da9f927396e1f8daff02b782297859a26f' \
        -rpcport=$RPCPORT -regtest=1 -port=$PORT -addnode=localhost:$NEXTNODENUM$PORTBASE \
        -addresstype=bech32 \
