#!/usr/bin/env bash
set -ex
npx degit sveltejs/template "$1"
cd "$1"
npx sb init
