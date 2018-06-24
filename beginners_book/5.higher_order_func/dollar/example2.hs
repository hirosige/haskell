main :: IO ()
main = do
  print $ map ($ 3) [(4+), (10*), (^2), sqrt]
