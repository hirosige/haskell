main :: IO ()
main = do
  print $ sum $ filter (>10) $ map (*2) [2..10]
