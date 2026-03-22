#!/bin/bash
curl --ssl-revoke-best-effort --retry 2 --connect-timeout 10 -L -O https://github.com/salix5/ygopro/releases/latest/download/YGOPro.exe
curl --ssl-revoke-best-effort --retry 2 --connect-timeout 10 -L -O https://github.com/salix5/windbot/releases/latest/download/WindBot.tar.gz
tar -xzf WindBot.tar.gz
rm WindBot.tar.gz
mkdir deck
mkdir replay
mkdir single
