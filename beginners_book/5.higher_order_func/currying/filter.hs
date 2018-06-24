filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' p (x:xs)
  | p x       = x : filter' p xs
  | otherwise = filter' p xs

main :: IO ()
main = do
  print $ filter' (<15) (filter' even [1..20])
