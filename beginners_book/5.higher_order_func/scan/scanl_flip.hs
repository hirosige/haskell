main :: IO ()
main = do
  print $ scanl (flip (:)) [] [3,2,1]
