#!/bin/bash

rm -rf bm.tgz
rm -rf bm
wget http://bondmachine.fisica.unipg.it/docs/material/bm.tgz 
tar zxvf bm.tgz
cd bm
SCRIPT=$(readlink -f "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
export PATH=$PATH:$SCRIPTPATH/bin
