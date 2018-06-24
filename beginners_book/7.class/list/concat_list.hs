infixr 5 ^++
(^++) :: List a -> List a -> List a
Empty ^++ ys = ys
(x:xs) ++ ys = x : (xs ++ ys)
