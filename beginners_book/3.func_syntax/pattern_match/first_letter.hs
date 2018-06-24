import Data.Foldable()

firstLetter :: String -> String
firstLetter "" = "Empty string, whoops!"
firstLetter all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]

main :: IO ()
main = do
  print $ firstLetter "Dracula"
  print $ firstLetter "Doctorine"
