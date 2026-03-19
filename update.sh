#!/bin/bash
curl --ssl-revoke-best-effort --retry 2 --connect-timeout 30 --create-dirs --output-dir "expansions" -O https://salix5.github.io/ypk/pre-release.ypk
curl --ssl-revoke-best-effort --retry 2 --connect-timeout 30 -O https://salix5.github.io/CardEditor/cards.cdb
curl --ssl-revoke-best-effort --retry 2 --connect-timeout 30 -O https://salix5.github.io/CardEditor/strings.conf
curl --ssl-revoke-best-effort --retry 2 --connect-timeout 30 -O https://salix5.github.io/CardEditor/lflist.conf
curl --ssl-revoke-best-effort --retry 2 --connect-timeout 30 -O https://salix5.github.io/CardEditor/rebuild.sh
git clone https://github.com/salix5/ygopro-pack.git pack
git clone https://github.com/Fluorohydride/ygopro-scripts.git script
cd script
git checkout master
git branch -D test
git pull
cd ../pack
git pull
