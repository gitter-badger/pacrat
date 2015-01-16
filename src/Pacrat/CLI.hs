{- |
Module      :  $Header$
Description :  Operations for the CLI.
Copyright   :  (c) 2015 Severen Redwood - <https://github.com/1nsanity>
License     :  GPL v3 (see the LICENSE file)

Maintainer  :  Severen Redwood <severen.redwood@gmail.com>
Stability   :  experimental
Portability :  non-portable (Designed for use on Arch Linux)

Operations pertaining to the CLI.
-}

module Pacrat.CLI(processArgs, usage) where

import System.Environment

-- | Processes CLI arguments.
processArgs :: IO ()
processArgs = putStrLn "Not setup yet"

-- | The usage/help text for Pacrat.
usage :: String
usage = "Name:\n\
     \    pacrat - Making Pacman and the AUR easy to use\n\n\
	   \Usage:\n\
	   \    pacrat [global options] command [command options] [arguments...]\n\n\
	   \Options:\n\
     \    -h, --help     :: Display this message\n\
	   \    -v, --verbose  :: Print extra debug/logging information\n\
	   \    -V, --version  :: Print version info and exit\n\n\
	   \Some common Pacrat commands are:\n\
	   \    install [package(s)]    :: Install one or more packages\n\
	   \    uninstall [package(s)]  :: Uninstall one or more packages\n\
	   \    sync                    :: Sync the local Pacman database\n\
	   \    upgrade                 :: Upgrade packages that have pending updates\n\
	   \    list                    :: List the currently installed packages\n\
	   \    gui                     :: Open a package management GUI\n\
	   \    search [string]         :: Search for a package\n\n\
	   \See 'pacrat help <command>' for more information on a specific command."
