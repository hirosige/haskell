doubleUs :: Int -> Int -> Int
doubleUs x y = x * 2 + x * 2

main :: IO ()
main = do
  print (doubleUs 7 8)
  print (doubleUs 8 8)
