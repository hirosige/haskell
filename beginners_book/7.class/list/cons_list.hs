infixr :-:
data List a = Empty | a :-: (List a)
  deriving (Show, Read, Eq, Ord)

infixr 5 ^++
(^++) :: List a -> List a -> List a
Empty      ^++ ys = ys
(x :-: xs) ^++ ys = x :-: (xs ^++ ys)


main :: IO ()
main = do
  let a = 3 :-: 4 :-: 5 :-: Empty
  let b = 6 :-: 7 :-: Empty

  print $ a ^++ b
