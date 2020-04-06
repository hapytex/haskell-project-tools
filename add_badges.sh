#!/bin/bash

if [ "$#" -lt '2' ]; then
  echo 'You need to pass <package-name> and <user-name> as parameters'
  exit 1
fi

pn="$1"
un="$2"

cat >> README.md << EOM
[![Build Status of the package by Travis](https://travis-ci.com/$un/$pn.svg?branch=master)](https://travis-ci.com/$un/$pn)
[![Build Status of the package by Hackage](https://matrix.hackage.haskell.org/api/v2/packages/$pn/badge)](https://matrix.hackage.haskell.org/#/package/$pn)
[![Hackage version badge](https://img.shields.io/hackage/v/$pn.svg)](https://hackage.haskell.org/package/$pn)
EOM
