#!/bin/bash
curl --ssl-revoke-best-effort --retry 2 --connect-timeout 30 --create-dirs --output-dir "expansions" --remote-name https://salix5.github.io/ypk/pre-release.ypk
curl --ssl-revoke-best-effort --retry 2 --connect-timeout 30 --remote-name https://salix5.github.io/CardEditor/cards.cdb
curl --ssl-revoke-best-effort --retry 2 --connect-timeout 30 --remote-name https://salix5.github.io/CardEditor/strings.conf
curl --ssl-revoke-best-effort --retry 2 --connect-timeout 30 --remote-name https://salix5.github.io/CardEditor/lflist.conf
git clone https://github.com/salix5/ygopro-pack.git pack
git clone https://github.com/Fluorohydride/ygopro-scripts.git script
cd script 
git checkout master
git branch -D test
git pull
git checkout test
cd ../pack
git pull
