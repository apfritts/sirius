#!/usr/bin/env bash

# Install OpenCV

hash brew 2>/dev/null || {
  echo >&2 "$0: [ERROR] homebrew is not installed. Aborting."
  exit 1
}

brew tap homebrew/science
brew install opencv
