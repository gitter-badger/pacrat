#!/usr/bin/env ruby

#
# Copyright (c) 2015 Severen Redwood - https://github.com/1nsanity
# This file is released under the GPL v3 license, see the LICENSE file
# or <http://www.gnu.org/licenses/gpl.html>
#

# This Ruby script is used to check if the required dependencies are installed.
# It is recommended that you run this script via the command
# 'make check-dependencies' in the project root directory.

# TODO: Add automatic dependency installation.

require 'mkmf'

puts "\x1b[33m==>\x1b[0m Checking if the Glasgow Haskell Compiler (GHC) is
installed..."
puts("\x1b[31mError:\x1b[0m GHC is not installed!") unless
find_executable('ghc')

puts "\n\x1b[33m==>\x1b[0m Checking if Make is installed..."
puts("\x1b[31mError:\x1b[0m Make is not installed!") unless
find_executable('make')
