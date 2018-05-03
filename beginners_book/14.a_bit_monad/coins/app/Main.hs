module Main where

import Control.Monad.State
import System.Random
import ThreeCoin
import Random

main :: IO ()
main = do
  print $ runState threeCoins (mkStdGen 11)
