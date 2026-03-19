#!/bin/bash
curl --ssl-revoke-best-effort --retry 2 --connect-timeout 30 -O https://salix5.github.io/archive/ygopro.tar.gz
curl --ssl-revoke-best-effort --retry 2 --connect-timeout 30 -L -O https://github.com/salix5/windbot/releases/latest/download/WindBot.tar.gz
tar -xzf ygopro.tar.gz
tar -xzf WindBot.tar.gz
rm WindBot.tar.gz
mkdir deck
mkdir replay
mkdir single
