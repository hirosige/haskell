module Main where

import Control.Monad.State
import Stack

main :: IO ()
main = do
  print $ runState stackManip [5, 8, 2, 1]
  print $ runState stackStuff [9,0,2,1,0]
