#!/bin/sh

bin=$(node -e 'process.stdout.write(require("."))')
$bin -h >/dev/null
