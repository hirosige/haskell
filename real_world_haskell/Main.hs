module Main (main) where

import PrettyJSON
import SimpleJSON
import Numeric

main :: IO ()
main = do
  -- print $ renderJValue $ JBool True
  print $ take 4 simpleEscapes
