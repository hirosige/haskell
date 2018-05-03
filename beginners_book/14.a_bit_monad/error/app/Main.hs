module Main where

import Lib
import Control.Monad.Except

main :: IO ()
main = do
  print $ Right 3 >>= \x -> return (x + 100) :: Either String Int
