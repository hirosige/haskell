take' :: Int -> [a] -> [a]
take' n _
  | n <= 0     = []
take' _ []     = []
take' n (x:xs) = x : take' (n-1) xs

main :: IO ()
main = do
  print $ take' 1 [1,2,3]
  print $ take' 2 [1,2,3]
