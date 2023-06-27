#!/bin/bash
set -e

if [ ! -e "src/uni-nav.c" ]; then
  echo "Please run this script from the root directory of Viewnior."; exit 1
fi

if [ -d "build" ]; then
  rm -fr build;
fi;

meson setup --prefix=/usr build && cd build && ninja && mv src/viewnior ../;

