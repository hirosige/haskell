module Main where

import Lib
import Hello

import Control.Monad
import Control.Monad.Writer

main :: IO ()
main = do
  print $ fst $ runWriter (gcd' 8 3)
  mapM_ putStrLn $ snd $ runWriter (gcd' 12 10)
