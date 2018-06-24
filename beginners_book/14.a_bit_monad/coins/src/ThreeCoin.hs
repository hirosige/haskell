module ThreeCoin
    ( threeCoins
    ) where

import System.Random
import Control.Monad.State
import Random

threeCoins :: State StdGen (Bool, Bool, Bool)
threeCoins = do
  a <- randomSt
  b <- randomSt
  c <- randomSt
  return (a, b, c)
