#!/bin/bash
curl --ssl-revoke-best-effort --retry 2 --connect-timeout 10 --create-dirs --output-dir "expansions" -L -O https://cdn.jsdelivr.net/gh/salix5/ypk@master/pre-release.ypk
curl --ssl-revoke-best-effort --retry 2 --connect-timeout 10 -L -O https://github.com/salix5/cdb/releases/latest/download/cards.cdb
curl --ssl-revoke-best-effort --retry 2 --connect-timeout 10 -L -O https://github.com/salix5/CardEditor/releases/latest/download/strings.conf
curl --ssl-revoke-best-effort --retry 2 --connect-timeout 10 -L -O https://github.com/salix5/CardEditor/releases/latest/download/lflist.conf
curl --ssl-revoke-best-effort --retry 2 --connect-timeout 10 -L -O https://github.com/salix5/CardEditor/releases/latest/download/rebuild.sh
if [ -d "pack" ]; then
    cd pack
    git pull
    cd ..
else
    git clone https://github.com/salix5/ygopro-pack.git pack
fi

if [ -d "script" ]; then
    cd script
    git checkout master
    git branch -D test 2>/dev/null
    git pull
    cd ..
else
    git clone https://github.com/Fluorohydride/ygopro-scripts.git script
fi
