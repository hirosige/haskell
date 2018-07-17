data Employee = Nil | Employee {
  getId :: Maybe Int,
  getName :: Maybe String
} deriving (Show, Eq, Ord)

type Employees = [Employee]

class Model a where
  find :: [a] -> Int -> Maybe a
  validate :: a -> Bool

instance Model Employee where
  find [] _ = Nothing
  find xs n
    | any isExist xs = Just . head $ filter isExist xs
    | otherwise      = Nothing
    where isExist :: Employee -> Bool
          isExist x = getId x == return n

  validate emp
    | getId emp <= Just 0    = False
    | getName emp == Just "" = False
    | otherwise              = True

employees :: Employees
employees = [ Employee (Just 1001) (Just "Suzuki")
            , Employee (Just 1002) (Just "Inoue")
            , Employee (Just 1005) (Just "Yamamoto")
            , Employee (Just 1010) (Just "Tagawa")
            , Employee (Just 1012) (Just "Tanaka")
            , Employee (Just 1013) (Just "Matsuda")
            , Employee (Just 1015) (Just "Kinoshita")
            , Employee (Just 1020) (Just "Ueno")
            , Employee (Just 1021) (Just "Okamoto")
            , Employee (Just 1022) (Just "Yoshinaga")
            ]

main :: IO ()
main = do
  print $ find employees 1001 >>= getId
  print $ find employees 1002 >>= getName
  print $ find ([] :: Employees) 1003
  print $ find employees 9999

  print $ validate $ Employee (Just 0) (Just "test")
  print $ validate $ Employee (Just 3) (Just "")
  print $ validate $ Employee (Just 9999) (Just "test")
