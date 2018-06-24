lucky :: Int -> String
lucky 7 = "Lucky Number Seven!"
lucky x = "Sorry, you're out of luck, pal!"

main :: IO ()
main = do
  print $ lucky 7
  print $ lucky 8
