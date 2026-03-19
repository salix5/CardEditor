#!/bin/bash
curl --ssl-revoke-best-effort --retry 2 --connect-timeout 30 --create-dirs --output-dir "expansions" -O https://salix5.github.io/ypk/pre-release.ypk
curl --ssl-revoke-best-effort --retry 2 --connect-timeout 30 -O https://github.com/salix5/cdb/releases/latest/download/card.cdb
curl --ssl-revoke-best-effort --retry 2 --connect-timeout 30 -O https://cdn.jsdelivr.net/gh/salix5/CardEditor@master/strings.conf
curl --ssl-revoke-best-effort --retry 2 --connect-timeout 30 -O https://cdn.jsdelivr.net/gh/salix5/CardEditor@master/lflist.conf
curl --ssl-revoke-best-effort --retry 2 --connect-timeout 30 -O https://cdn.jsdelivr.net/gh/salix5/CardEditor@master/rebuild.sh
git clone https://github.com/salix5/ygopro-pack.git pack
git clone https://github.com/Fluorohydride/ygopro-scripts.git script
cd script
git checkout master
git branch -D test
git pull
cd ../pack
git pull
