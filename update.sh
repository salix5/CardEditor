#!/bin/bash
curl --ssl-revoke-best-effort --retry 2 --connect-timeout 10 --create-dirs --output-dir "expansions" -L -O https://github.com/salix5/ypk/releases/latest/download/pre-release.ypk
curl --ssl-revoke-best-effort --retry 2 --connect-timeout 10 -L -O https://github.com/salix5/cdb/releases/latest/download/cards.cdb
curl --ssl-revoke-best-effort --retry 2 --connect-timeout 10 -L -O https://github.com/salix5/CardEditor/releases/latest/download/strings.conf
curl --ssl-revoke-best-effort --retry 2 --connect-timeout 10 -L -O https://github.com/salix5/CardEditor/releases/latest/download/lflist.conf
curl --ssl-revoke-best-effort --retry 2 --connect-timeout 10 -L -O https://github.com/salix5/CardEditor/releases/latest/download/rebuild.sh
if [ -d "pack/.git" ]; then
    git -C pack pull
else
    rm -rf pack
    git clone https://github.com/salix5/ygopro-pack.git pack
fi

if [ -d "script/.git" ]; then
    git -C script checkout master
    git -C script pull
else
    rm -rf script
    git clone https://github.com/Fluorohydride/ygopro-scripts.git script
fi
