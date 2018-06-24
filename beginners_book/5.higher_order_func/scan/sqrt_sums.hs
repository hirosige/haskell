sqrtSums :: Int
sqrtSums = length (takeWhile (<1000) (scanl1 (+) (map sqrt [1..]))) + 1

main :: IO ()
main = do
  print $ sqrtSums
