{- |
Module      :  $Header$
Description :  Wrapper functions for Pacman.
Copyright   :  (c) 2015 Severen Redwood - <https://github.com/1nsanity>
License     :  GPL v3 (see the LICENSE file)

Maintainer  :  Severen Redwood <severen.redwood@gmail.com>
Stability   :  experimental
Portability :  non-portable (Designed for use on Arch Linux)

Wrapper functions for interacting with Pacman.
-}

module Pacrat.Wrapper(searchForPackage) where

import System.Process
import System.Environment

-- | Converts a Pacrat search query into a Pacman search query.
searchForPackage :: String -> String
searchForPackage pkg = "Package you were searching for: " ++ pkg
