#!/usr/bin/env bash
f=~/.michael/scripts/fuzzy-sys.bash
curl -sSL https://raw.githubusercontent.com/NullSense/fuzzy-sys/master/fuzzy-sys.plugin.zsh -o "$f"
chmod u+x "$f"
echo -e '\nfuzzy-sys $@' >> "$f"
