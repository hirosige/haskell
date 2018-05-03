module Main where

import Lib
import Diff
import CountDown
import Hello

import Control.Monad
import Control.Monad.Writer

main :: IO ()
main = do
  mapM_ putStrLn . snd .runWriter $ finalCountDown 500000
