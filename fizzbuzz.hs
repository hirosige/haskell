double :: Int -> Int
double n = 2 * n

triple :: Int -> Int
triple n = 3 * n

main :: IO ()
main = do
  print $ double . triple $ 3
