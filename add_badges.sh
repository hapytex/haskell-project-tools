#!/bin/bash

if [ "$#" -lt '2' ]; then
  echo 'You need to pass <package-name> and <user-name> as parameters'
  exit 1
fi

pn="$1"
un="$2"
em='hapytexeu+gh@gmail.com'

if [ "$#" -ge '3' ]; then
  em="$3"
fi

cat >> README.md << EOM
[![Build Status of the package by Travis](https://travis-ci.com/$un/$pn.svg?branch=master)](https://travis-ci.com/$un/$pn)
[![Build Status of the package by Hackage](https://matrix.hackage.haskell.org/api/v2/packages/$pn/badge)](https://matrix.hackage.haskell.org/#/package/$pn)
[![Hackage version badge](https://img.shields.io/hackage/v/$pn.svg)](https://hackage.haskell.org/package/$pn)

## \`$pn\` is ??? *safe* Haskell

???

## Contribute

You can contribute by making a pull request on the [*GitHub
repository*](https://github.com/$un/$pn).

You can contact the package maintainer by sending a mail to
[\`$em\`](mailto:$em).

EOM
