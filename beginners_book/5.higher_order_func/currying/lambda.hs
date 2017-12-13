main :: IO ()
main = do
  print $ map (\x -> x + 3) [1,6,3,2]
  print $ map (\x -> x + 5) [1,1,1,1]
