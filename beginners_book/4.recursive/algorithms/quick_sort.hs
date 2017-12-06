qsort :: (Ord a) => [a] -> [a]
qsort []     = []
qsort (p:xs) = qsort smaller ++ [p] ++ qsort larger
  where
    smaller = [x | x <- xs, x < p]
    larger  = [x | x <- xs, x >= p]

main :: IO ()
main = do
  print $ qsort [4,5,3,2,6,7,8,9]
  print $ qsort [4,5,3,2,6,7,8,9]
