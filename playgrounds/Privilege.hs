data Role = Admin | User | Guest
  deriving (Show, Eq)

person :: String -> Role -> Person
person name role = Person name role

data Person = Person {
  getName :: String,
  getRole :: Role
} deriving (Show, Eq)

class Privilege a where
  action :: a -> String
  isAdmin :: a -> Bool
  getPrivilegedPrice :: a -> Int

instance Privilege Role where
  action Admin = "admin"
  action User = "user"
  action Guest = "guest"

  isAdmin Admin = True
  isAdmin _     = False

  getPrivilegedPrice Admin = 100
  getPrivilegedPrice User  = 200
  getPrivilegedPrice Guest = 300

main :: IO ()
main = do
  print $ action $ getRole (person "Hiro1" Admin)
  print $ action $ getRole (person "Hiro2" User)
  print $ action $ getRole (person "Hiro3" Guest)

  print $ isAdmin $ getRole (person "Hiro1" Admin)
  print $ isAdmin $ getRole (person "Hiro2" User)
  print $ isAdmin $ getRole (person "Hiro3" Guest)

  print $ 10 * getPrivilegedPrice (getRole (person "Hiro1" Admin))
  print $ 10 * getPrivilegedPrice (getRole (person "Hiro1" User))
  print $ 10 * getPrivilegedPrice (getRole (person "Hiro1" Guest))
