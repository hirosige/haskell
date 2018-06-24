elemAt :: Int -> [a] -> a
elemAt n list = list !! n

main :: IO ()
main = do
  print $ elemAt 1 ["test", "test2", "test4"]
  print $ elemAt 5 "test1234"
