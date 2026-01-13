#!/bin/bash

# TODO: check if files already exist

if ! ./hytale-downloader-linux-amd64; then
  echo "Download failed. Aborting..."
  exit $?
fi

# TODO: execute hytale
