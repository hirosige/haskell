import Control.Monad

type XDim = Int
type YDim = Int
type KnightPos = (XDim, YDim)

moveArea :: (XDim, YDim) -> [KnightPos]
moveArea (c, r) = [(c+2, r-1), (c+2, r+1), (c-2, r-1), (c-2, r+1)
                  ,(c+1, r-2), (c+1, r+2), (c-1, r-2), (c-1, r+2)]

moveKnight :: KnightPos -> [KnightPos]
moveKnight (c, r) = do
  (c', r') <- moveArea (c, r)
  guard (c' `elem` [1..8] && r' `elem` [1..8])
  return (c', r')

in3 :: KnightPos -> [KnightPos]
in3 start = do
    first <- moveKnight start
    second <- moveKnight first
    moveKnight second

canReachIn3 :: KnightPos -> KnightPos -> Bool
canReachIn3 start end = end `elem` in3 start

main :: IO ()
main = do
  print $ (6,2) `canReachIn3` (6,1)
