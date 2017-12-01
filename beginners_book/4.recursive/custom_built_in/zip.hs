zip' :: [a] -> [b] -> [(a, b)]
zip' _ [] = []
zip' [] _ = []
zip' (x:xs) (y:ys) = (x,y) : zip' xs ys

main :: IO ()
main = do
  print $ zip' [1,2,3] [2,3,4]
  print $ zip' [1,2,3] [5,6,7]
