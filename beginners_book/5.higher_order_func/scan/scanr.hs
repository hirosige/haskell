main :: IO ()
main = do
  print $ scanr (+) 0 [3,5,2,1]
