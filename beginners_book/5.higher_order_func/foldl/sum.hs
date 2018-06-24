sum' :: (Num a) => [a] -> a
sum' xs = foldl (\acc x -> acc + x) 0 xs

main :: IO ()
main = do
  print $ sum' [3,5,2,1]
