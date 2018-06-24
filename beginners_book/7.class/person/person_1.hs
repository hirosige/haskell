data Person = Person {
  firstName :: String,
  lastName :: String,
  age :: Int,
  height :: Float,
  phoneNumber :: String,
  flavor :: String
} deriving (Show)

main :: IO ()
main = do
  let guy = Person "Buddy" "Finklestein" 43 184.2 "526-2928" "Chocolate"
  print $ firstName guy
  print $ lastName guy
  print $ age guy
  print $ height guy
  print $ phoneNumber guy
  print $ flavor guy
