zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

main :: IO ()
main = do
  print $ zipWith' (++) ["test","test","test","test"] ["hello","hello","hello","hello"]
  print $ zipWith' (+) [4,2,5,6] [2,6,2,3]
  print $ zipWith' max [4,2,5,6] [2,6,2,3]
