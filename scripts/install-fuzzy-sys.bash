#!/usr/bin/env bash
set -ex
cd "${0%/*}/../bin"
curl -sSL https://raw.githubusercontent.com/NullSense/fuzzy-sys/master/fuzzy-sys.plugin.zsh -o fuzzy-sys.bash
chmod u+x fuzzy-sys.bash
echo -e '\nfuzzy-sys $@' >> fuzzy-sys.bash
