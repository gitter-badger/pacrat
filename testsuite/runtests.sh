#!/bin/bash

#
# Copyright (c) 2015 Severen Redwood - https://github.com/1nsanity
# This file is released under the GPL v3 license, see the LICENSE file
# or <http://www.gnu.org/licenses/gpl.html>
#

type ghc > /dev/null 2>&1 || { printf "GHC is not installed!\n"; exit 1; }
type cabal > /dev/null 2>&1 || { printf "cabal-install is not installed!\n"; exit 1; }
