{- |
Module      :  $Header$
Description :  Contains the application's main entry point.
Copyright   :  (c) 2015 Severen Redwood - <https://github.com/1nsanity>
License     :  GPL v3 (see the LICENSE file)

Maintainer  :  Severen Redwood <severen.redwood@gmail.com>
Stability   :  experimental
Portability :  non-portable (Designed for use on Arch Linux)

Main module containing the main entry point for Pacrat.
-}

module Main(main) where

import System.Environment
import qualified Pacrat.CLI as CLI
import qualified Pacrat.GUI as GUI

-- | Main entry point for the application.
main :: IO ()
main = do
	args <- getArgs
	CLI.processArgs
	GUI.start
