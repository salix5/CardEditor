#!/bin/bash
set -euo pipefail
VERSION="v1.10.1"
curl -q --fail --ssl-revoke-best-effort --retry 2 --connect-timeout 10 -L -O "https://github.com/salix5/ygopro/releases/download/${VERSION}/YGOPro-${VERSION}-x64.tar.gz"
tar -xzf "YGOPro-${VERSION}-x64.tar.gz"
rm "YGOPro-${VERSION}-x64.tar.gz"

rm -rf WindBot
curl -q --fail --ssl-revoke-best-effort --retry 2 --connect-timeout 10 -L https://github.com/salix5/windbot/releases/latest/download/WindBot.tar.gz | tar -xzf -

curl -q --fail --ssl-revoke-best-effort --retry 2 --connect-timeout 10 --create-dirs --output-dir "textures" -L -O "https://github.com/salix5/ygopro/releases/latest/download/lim_credit.png"
mkdir -p deck
mkdir -p replay
mkdir -p single
