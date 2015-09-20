#!/usr/bin/env bash

hash brew 2>/dev/null || {
  echo >&2 "$0: [ERROR] homebrew is not installed. Aborting."
  exit 1
}

brew install wget

./get-kaldi.sh
