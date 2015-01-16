#
# Copyright (c) 2015 Severen Redwood - https://github.com/1nsanity
# This file is released under the GPL v3 license, see the LICENSE file
# or <http://www.gnu.org/licenses/gpl.html>
#

# This Makefile does not do any compilation of Haskell files.
# Check Pacrat.cabal and Setup.hs for build settings instead.

default: build

configure:
	@(printf "\x1b[33m==>\x1b[0m Configuring Pacrat...\n")
	cabal configure

build: check-dependencies
	@(printf "\x1b[33m==>\x1b[0m Configuring...\n")
	cabal configure
	@(printf "\x1b[33m==>\x1b[0m Compiling...\n")
	cabal build
	@(printf "\n\x1b[32m==>\x1b[0m Build finished! Enjoy! ^_^\n")

test: check-dependencies
	@(printf "\n\x1b[33m==>\x1b[0m Running test suite...\n")
	cabal test

doc:
	@(printf "\x1b[33m==>\x1b[0m Generating Haddock documentation...\n")
	cabal haddock --executables --hyperlink-source

# 99% of the work here is done in the Ruby script Util/check-dependencies.rb.
check-dependencies:
	chmod u+x util/check-dependencies.rb
	@(printf "\x1b[33m==>\x1b[0m Checking if Ruby is installed...\n")
	@(type ruby 2>&1 || { printf "\x1b[31mError:\x1b[0m Ruby is not installed!\n"; exit 1;})
	@(printf "\x1b[32m==>\x1b[0m Dependency 'ruby' is present.\n\n")
	cd util; ./check-dependencies.rb

# All of the work is done in the Ruby script Util/generate-man.rb.
man:
	chmod u+x util/generate-man.rb
	@(printf "\x1b[33m==>\x1b[0m Checking if Ruby is installed...\n")
	@(type ruby 2>&1 || { printf "\x1b[31mError:\x1b[0m Ruby is not installed!\n"; exit 1; })
	@(printf "\x1b[32m==>\x1b[0m Dependency 'ruby' is present.\n\n")
	cd Util; ./generate-man.rb

clean:
	cabal clean
	rm -f doc/man/man1/pacrat.1
	rm -f doc/man/man1/portal.1
