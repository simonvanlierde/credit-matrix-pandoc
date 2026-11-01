#!/bin/sh
# Render the sample and compare the statement line; the root and Quarto copies must be one file.
set -eu
cd "$(dirname "$0")/.."
out=$(pandoc sample.md --lua-filter=credit-matrix.lua --to=plain --wrap=none)
printf '%s\n' "$out" | grep -F -x -f test/expected.txt >/dev/null || {
  echo "statement differs from test/expected.txt:" >&2
  printf '%s\n' "$out" >&2
  exit 1
}
cmp credit-matrix.lua _extensions/credit-matrix/credit-matrix.lua
echo ok
