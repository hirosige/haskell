firstLetter :: String -> String
firstLetter "" = "Empty string, woops!"
firstLetter all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]

main :: IO ()
main = do
  print $ firstLetter "Dracula"
  print $ firstLetter "Dracula2"
