repeat' :: a -> [a]
repeat' x = x : repeat' x

main :: IO ()
main = do
  print $ repeat' 5
  print $ repeat' 5
