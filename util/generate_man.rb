#!/usr/bin/env ruby

#
# Copyright (c) 2015 Severen Redwood - https://github.com/1nsanity
# This file is released under the GPL v3 license, see the LICENSE file
# or <http://www.gnu.org/licenses/gpl.html>
#

# This Ruby script generates roff and (optionally) HTML man pages from Ronn
# Markdown formatted man pages. It is recommended you run this script via the
# command 'make man' in the project root directory.

puts("\x1b[33m==>\x1b[0m Checking if Ronn is installed...")
if system('type ronn') == true
  puts("\x1b[32m==>\x1b[0m Dependency 'ronn' is present.")
else
  puts("\x1b[31mError:\x1b[0m Ronn is not installed!")
end

puts("\x1b[33m==>\x1b[0m Generating man pages...")
puts("\x1b[33m==>\x1b[0m pacrat.1.ronn")
system('ronn -r -w ../doc/man/man1/pacrat.1.ronn')
puts("\x1b[33m==>\x1b[0m portal.1.ronn")
system('ronn -r -w ../doc/man/man1/portal.1.ronn')
