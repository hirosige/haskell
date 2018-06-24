main :: IO ()
main = do
  print $ scanl1 (\acc x -> if x > acc then x else acc) [3,4,5,3,7,9,2,1]
