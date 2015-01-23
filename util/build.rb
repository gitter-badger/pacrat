#!/usr/bin/env ruby

#
# Copyright (c) 2015 Severen Redwood - https://github.com/1nsanity
# This file is released under the GPL v3 license, see the LICENSE file
# or <http://www.gnu.org/licenses/gpl.html>
#

# This Ruby script is used to build Pacrat.
# It is recommended that you run this script via the command
# 'make build' in the project root directory.

PACRAT_ROOT = File.dirname(File.dirname(File.expand_path($PROGRAM_NAME)))

if !File.exist?("#{PACRAT_ROOT}/.cabal-sandbox") ||
   !File.exist?("#{PACRAT_ROOT}/cabal.sandbox.config")
  system('cd ..; cabal sandbox init')
end

puts("\x1b[33m==>\x1b[0m Installing dependencies from Hackage...")
system('cd ..; cabal install --only-dependencies')
puts("\x1b[33m==>\x1b[0m Configuring...")
system('cd ..; cabal configure')
puts("\x1b[33m==>\x1b[0m Building...")
system('cd ..; cabal build')
puts("\n\x1b[32m==>\x1b[0m Build finished! Enjoy! ^_^")
