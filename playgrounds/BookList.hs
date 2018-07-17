data Book = Book {
  getName :: String,
  getPrice :: Int
} deriving (Show, Eq, Ord)

type BookList = [Book]

bookList :: BookList
bookList = [ Book "test" 200
           , Book "test2" 100
           , Book "test2" 1000
           , Book "test2" 9900
           ]

mostExpBook :: BookList -> Book
mostExpBook (x:xs)
  | foldr ((||) . (\a -> getPrice x > getPrice a)) False xs == True = x
  | otherwise  = mostExpBook xs

main :: IO ()
main = do
  print $ Book "test" 100
  print $ mostExpBook bookList
