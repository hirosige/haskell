foo :: String -> Maybe String
foo z = do
  x <- Just 3
  y <- Just (" " ++ z ++ " !")
  Just (show x ++ y)

main :: IO ()
main = do
  print $ foo "hello"
