import qualified Data.Foldable as F

main :: IO ()
main = do
  print $ F.foldr (+) 2 [1, 2, 3]
  print $ F.foldr (||) False [True, False, True]
