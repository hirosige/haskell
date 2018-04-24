import Control.Monad

type KnightPos = (Int, Int)

moveKight :: KnightPos -> [KnightPos]
moveKight (c, r) = do
  (c', r') <- [(c+2, r-1), (c+2, r+1), (c-2, r-1), (c-2, r+1)
              ,(c+1, r-2), (c+1, r+2), (c-1, r-2), (c-1, r+2)
              ]
  guard (c' `elem` [1..8] && r' `elem` [1..8])
  return (c', r')

in3 :: KnightPos -> [KnightPos]
in3 start = do
    first <- moveKight start
    second <- moveKight first
    moveKight second

canReachIn3 :: KnightPos -> KnightPos -> Bool
canReachIn3 start end = end `elem` in3 start

main :: IO ()
main = do
  print $ moveKight (1, 1)
  print $ (6, 2) `canReachIn3` (6, 1)
