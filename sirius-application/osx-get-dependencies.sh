#!/usr/bin/env bash

# Install (some) dependencies

hash brew 2>/dev/null || {
  echo >&2 "$0: [ERROR] homebrew is not installed. Aborting."
  exit 1
}

# Update homebrew
brew update

# Tap Caskroom
brew tap Caskroom/cask

# Update sources and install basics
brew install sox Caskroom/cask/java ant automake autoconf libtool boost ffmpeg swig python

# OpenCV dependencies are handled by Homebrew

# Get tessaract text recognition
brew install tesseract

# Get ATLAS library for Kaldi - works with OpenBLAS
brew install openblas

# Get protobuf for image-matching
brew install protobuf

# get deps for web application
pip install wtforms Flask requests pickledb

# We will also need gnu-tar
brew install gnu-tar
