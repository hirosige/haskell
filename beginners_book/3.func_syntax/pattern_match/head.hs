head' :: [a] -> a
head' [] = error "Can't call head on an empty list, dummy!"
head' (x:_) = x

main :: IO ()
main = do
  let list = [4,5,6]::[Int]
  let hello = "Hello"::String

  print $ head' list
  print $ head' hello
