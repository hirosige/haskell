module Main where

import Control.Monad.Writer
import MultWithLog

main :: IO ()
main = do
  print $ runWriter multWithLog
