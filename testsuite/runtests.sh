#!/bin/bash

#
# Copyright (c) 2015 Severen Redwood - https://github.com/1nsanity
# This file is released under the GPL v3 license, see the LICENSE file
# or <http://www.gnu.org/licenses/gpl.html>
#

# TODO: Write tests and benchmarks.

chmod u+x ../util/check-dependencies.rb
printf "\x1b[33m==>\x1b[0m Checking if Ruby is installed...\n"
type ruby 2>&1 || { printf "\x1b[31mError:\x1b[0m Ruby is not installed!\n"; exit 1; }
printf "\x1b[32m==>\x1b[0m Dependency 'ruby' is present.\n\n"
ruby ../util/check-dependencies.rb
