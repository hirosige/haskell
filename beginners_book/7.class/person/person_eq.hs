data Person = Person {
  firstName :: String
, lastName :: String
, age :: Int
} deriving(Eq)

main :: IO ()
main = do
  let mikeD = Person {
    firstName = "Michael"
  , lastName  = "Diamond"
  , age       = 43
  }

  let adRock = Person {
    firstName = "Adam"
  , lastName  = "Horovitz"
  , age       = 41
  }

  let mca = Person {
    firstName = "Adam"
  , lastName  = "Yauch"
  , age       = 44
  }

  print $ mca == adRock
  print $ mikeD == adRock
  print $ mikeD == mikeD
