module CountDown
    ( finalCountDown
    ) where

import Control.Monad.Writer
import Diff

finalCountDown :: Int -> Writer [String] ()
finalCountDown 0 = do
  tell ["0"]
finalCountDown x = do
  finalCountDown (x-1)
  tell [show x]
