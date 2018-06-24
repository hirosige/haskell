factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

main :: IO ()
main = do
  print $ factorial 5
  print $ factorial 2
  print $ factorial 10
