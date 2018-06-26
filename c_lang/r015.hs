data Person = Person {
  getName :: String,
  getScore :: Int
} deriving (Show, Eq)

class (Eq a) => HirochanEq a where
  equals :: a -> a -> Bool
  notEquals :: a -> a -> Bool

  x `equals` y    = x == y
  x `notEquals` y = x /= y

instance HirochanEq Person where
  (Person x y) `equals` (Person x' y') = x == x' && y == y'

winWhich :: Person -> Person -> Maybe String
winWhich p1 p2
  | getScore p1 == getScore p2  = Just (getName p1 ++ " equals " ++ getName p2)
  | getScore p1 >  getScore p2  = Just (getName p1 ++ " is won")
  | getScore p1 <  getScore p2  = Just (getName p2 ++ " is won")
  | otherwise                   = Nothing

giveComplement :: String -> Maybe String
giveComplement "" = Nothing
giveComplement res
  | 'w' `elem` res   = Just (res ++ ", congratulations!!")
  | 'e' `elem` res   = Just (res ++ ", wow, competitive")
  | otherwise        = Nothing

main :: IO ()
main = do
  print $ Person "abe" 99 `equals` Person "abe" 99
  print $ Person "abe" 98 `notEquals` Person "abe" 99
  print $ winWhich (Person "hiro" 87)  (Person "abe" 99) >>= giveComplement
  print $ winWhich (Person "hiro" 80)  (Person "abe" 80) >>= giveComplement
  print $ winWhich (Person "hiro" 100) (Person "abe" 95) >>= giveComplement
  print $ winWhich (Person "hiro" 87)  (Person "abe" 99) >>= giveComplement
