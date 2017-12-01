replicate' :: Int -> a -> [a]
replicate' n x
  | n <= 0    = []
  | otherwise = x : replicate' (n-1) x

main :: IO ()
main = do
  let five = 5::Int
  let eight = 8::Int

  print $ replicate' five five
  print $ replicate' eight eight
