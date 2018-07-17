type Name = String
type Tall = Double

data Person = Person {
  getName :: Name,
  getTall :: Tall
} deriving (Show, Eq)

people :: [Person]
people = [ Person "Hiro1" 189.0
         , Person "Hiro2" 180.0
         , Person "Hiro3" 175.0
         ]

-- highestPerson :: [Person] -> Maybe Person
-- highestPerson [] = Nothing
-- highestPerson xs = foldr (\x -> getTall x) [] xs

main :: IO ()
main = do
  print $ Person "Hiro" 195.80
  print $ maximum $ foldr ((:) . getTall) [] people
  print $ people !! 1
