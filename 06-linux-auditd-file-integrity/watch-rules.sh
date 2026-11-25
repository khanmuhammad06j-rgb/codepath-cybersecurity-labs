#!/usr/bin/env bash
# Watch sensitive files for writes (w) and attribute changes (a), each tagged with its own search key.
# Run as root. Example file names from the lab.
set -euo pipefail

for f in cloudia.txt oakley.txt squeaky.txt precipitation.csv; do
  key="watch-${f%%.*}"
  auditctl -w "$PWD/$f" -p wa -k "$key"
done

auditctl -l   # list active rules

# After the change happens, find out which process did it:
#   ausearch -k watch-cloudia -i | grep -E 'comm=|name='
