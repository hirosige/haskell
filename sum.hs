type IntList = [Int]

sum' :: IntList -> Int
sum' intList
  | intList == []     = 0
  | otherwise =  (x:xs) = x + sum' xs

main :: IO ()
main = do
  print $ sum' [1..10]
