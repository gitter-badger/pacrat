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

puts "\x1b[33m==>\x1b[0m Checking if the Glasgow Haskell Compiler (GHC) is installed..."
if system('type ghc') == true
  puts "\x1b[32m==>\x1b[0m Dependency 'ghc' is present."
else
  puts "\x1b[31mError:\x1b[0m GHC is not installed!"
end

puts "\n\x1b[33m==>\x1b[0m Checking if Make is installed..."
if system('type make') == true
  puts "\x1b[32m==>\x1b[0m Dependency 'make' is present."
else
  puts "\x1b[31mError:\x1b[0m Make is not installed!"
end
