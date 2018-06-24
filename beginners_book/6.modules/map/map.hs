import qualified Data.Map as Map
import qualified Data.Char as Char

phoneBookToMap :: (Ord k) => [(k, String)] -> Map.Map k String
phoneBookToMap xs = Map.fromListWith
  add xs
    where add number1 number2 = number1 ++ ", " ++ number2

phoneBook :: Map.Map String String
phoneBook = Map.fromList
  [("betty",   "555-2938")
  ,("betty",   "342-2492")
  ,("bonnie",  "452-2928")
  ,("patsy",   "493-2928")
  ,("patsy",   "943-2929")
  ,("patsy",   "827-9126")
  ,("lucille", "205-2928")
  ,("wendy",   "939-8282")
  ,("penny",   "853-2492")
  ]

string2digits :: String -> [Int]
string2digits = map Char.digitToInt . filter Char.isDigit

main :: IO ()
main = do
  let newBook = Map.insert "grace" "341-9021" phoneBook
  let intBook = Map.map string2digits phoneBook

  print $ Map.lookup "betty" phoneBook
  print $ Map.lookup "wendy" phoneBook
  print $ Map.lookup "grace" phoneBook

  print $ Map.lookup "patsy" $ phoneBookToMap  phoneBook

  print $ Map.size phoneBook
  print $ Map.size newBook

  print $ string2digits "948-9282"

  print $ Map.lookup "betty" intBook
