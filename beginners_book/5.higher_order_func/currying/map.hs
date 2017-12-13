map' :: (a -> b) -> [a] -> [b]
map' _ []     = []
map' f (x:xs) = f x : map' f xs

main :: IO ()
main = do
  print $ map' (+3) [1,5,3,1,6]
