reverse' :: [a] -> [a]
reverse' [] = []
reverse' original@(_:_) = last original : reverse' (init original)

main :: IO ()
main = do
  print $ reverse' [1..10]
  print $ reverse' "hello, world"
