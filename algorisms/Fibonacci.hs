fibona :: Int -> Int
fibona n
  | n < 2     = n
  | otherwise = let a = fibona (n - 1)
                    b = fibona (n - 2)
                in a + b

main :: IO ()
main = do
  print $ map fibona [0..10]
