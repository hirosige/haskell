module Main where

import Lib
import Control.Monad.Writer

logNumber :: Int -> Writer [String] Int
logNumber x = writer (x + 1, ["Got number" ++ show x])

logsNumber :: [Int] -> Writer [String] Int
logsNumber (x:xs) = logNumber x >>= logsNumber xs

main :: IO ()
main = do
  print $ runWriter $ logsNumber [1..100]
