import Control.Monad
import Data.List

type KnightPos = (Int, Int)

moveKnight :: KnightPos -> [KnightPos]
moveKnight (c, r) = do
  (c', r') <- [(c+2, r-1), (c+2, r+1), (c-2, r-1), (c-2, r+1)
              ,(c+1, r-2), (c+1, r+2), (c-1, r-2), (c-1, r+2)
              ]
  guard (c' `elem` [1..8] && r' `elem` [1..8])
  return (c', r')

in3 :: KnightPos -> [KnightPos]
in3 start = do
    first <- moveKnight start
    second <- moveKnight first
    moveKnight second

inMany :: Int -> KnightPos -> [KnightPos]
inMany x start = return start >>= foldr (<=<)
  return (replicate x moveKnight)

canReachIn3 :: KnightPos -> KnightPos -> Bool
canReachIn3 start end = end `elem` in3 start

canReachIn :: Int -> KnightPos -> KnightPos -> Bool
canReachIn x start end = end `elem` inMany x start

main :: IO ()
main = do
  print $ moveKnight (1, 1)
  print $ canReachIn 5 (6, 2) (6, 1)