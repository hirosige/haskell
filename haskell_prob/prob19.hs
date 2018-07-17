rotate [] _ = []
rotate xs 0 = xs
rotate (x:xs) (n+1) = rotate (xs ++ [x]) n
rotate xs n = rotate xs (length xs + n)

main :: IO ()
main = do
  print $ rotate [1..10] 3
