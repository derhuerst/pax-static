#!/bin/sh
set +e

bin=$(node -e 'process.stdout.write(require("."))')
$bin -i index.js -o - >/dev/null
