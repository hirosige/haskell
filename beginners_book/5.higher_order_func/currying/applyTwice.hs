applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f (f x))

main :: IO ()
main = do
  print $ applyTwice (++ " HAHA") "Hey"
  print $ applyTwice (++ " HAHA") "Hey2"
