{- |
Module      :  $Header$
Description :  Operations for the command line UI.
Copyright   :  (c) 2015 Severen Redwood - <https://github.com/1nsanity>
License     :  GPL v3 (see the LICENSE file)

Maintainer  :  Severen Redwood <severen.redwood@gmail.com>
Stability   :  experimental
Portability :  non-portable (Designed for use on Arch Linux)

Operations pertaining to the command line UI.
-}

module Pacrat.GUI(start) where

import Control.Monad
import Graphics.Vty.Widgets.All
import qualified Data.Text as T

-- | Starts the package management GUI.
--   NOTE: Currently just runs the sample application from the vty-ui Git repo.
start :: IO ()
start = do
    e <- editWidget
    ui <- centered e

    fg <- newFocusGroup
    _ <- addToFocusGroup fg e

    c <- newCollection
    _ <- addToCollection c ui fg

    e `onActivate` (getEditText Control.Monad.>=> (error . ("You entered: " ++) . T.unpack))

    runUi c defaultContext
