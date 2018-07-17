data Branch = Branch {
  getName :: String,
  getProfit :: Int
} deriving (Show, Eq, Ord)

type Branches = [Branch]

branches :: Branches
branches = [ Branch "Head" 75000
           , Branch "Osaka" 34600
           , Branch "Fukuoka" 28400
           , Branch "Nagasaki" 35600
           , Branch "Sasebo" 12500
           ]

sortBranch :: Branches -> Branches
sortBranch [] = []
sortBranch (x:xs) = let smaller = filter (\a -> getProfit a <= getProfit x) xs
                        larger  = filter (\a -> getProfit a > getProfit x) xs
                    in sortBranch larger ++ [x] ++ sortBranch smaller

addIndex :: Branches -> [(Int, Branch)]
addIndex [] = []
addIndex xs = zip [1..] xs

toString :: [(Int, Branch)] -> String
toString [] = ""
toString (x:xs) = row x ++ toString xs
  where name   = getName . snd
        profit = show . getProfit . snd
        index  = show . fst
        row n  = name n ++ " " ++ profit n ++ " " ++ index n ++ " "

main :: IO ()
main = do
  print $ toString . addIndex . sortBranch $ branches
  print $ toString . addIndex . sortBranch $ branches
