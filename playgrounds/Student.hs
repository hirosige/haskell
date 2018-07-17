module Student(
  Role(..)
  , Student(..)
  , Handle(..)
) where

data Role = User | Admin
  deriving (Show, Ord, Eq)

data Student = Student {
  getName :: String,
  getRole :: Role
} deriving (Show, Ord, Eq)

class (Eq a) => Handle a where
  isAdmin :: a -> Bool
  toString :: a -> String

instance Handle Student where
  isAdmin (Student x y) = getRole (Student x y) == Admin
  toString (Student x y) = "Is " ++ getName (Student x y) ++ " admin? : " ++ (show . isAdmin $ Student x y)
