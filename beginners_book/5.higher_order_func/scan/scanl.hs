main :: IO ()
main = do
  print $ scanl (+) 0 [3,5,2,1]
