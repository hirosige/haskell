data Person = Person {
  firstName :: String
, lastName :: String
, age :: Int
} deriving (Eq, Show, Read)

main :: IO ()
main = do
  let mikeD = Person {
    firstName = "Michael"
  , lastName  = "Diamond"
  , age       = 43
  }

  let mysteryDude = "Person { firstName =\"Michael\", lastName =\"Diamond\", age = 43}"
  let mikeD2 = read mysteryDude :: Person

  print $ "mikeD is: " ++ show mikeD
  print $ show mikeD2
  print $ mikeD2 == mikeD
