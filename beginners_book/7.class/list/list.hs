data List a = Empty | Cons {
  listhead :: a,
  listTail :: List a
} deriving (Show, Read, Eq, Ord)

main :: IO ()
main = do
  print $ 4 `Cons` (5 `Cons` Empty)
