maximum' :: (Ord a) => [a] -> a
maximum' [] = error "maximum of empty list!"
maximum' [x] = x
maximum' (x:xs) = max x (maximum' xs)

main :: IO ()
main = do
  let list = [1,2,3,4,5]::[Int]
  print $ maximum' list
