type Bird = Int
type Pole = (Bird, Bird)

landLeft :: Bird -> Pole -> Maybe Pole
landLeft n (left, right)
  | abs ((left + n) - right) < 4 = Just (left + n, right)
  | otherwise                = Nothing

landRight :: Bird -> Pole -> Maybe Pole
landRight n (left, right)
  | abs (left - (right + n)) < 4 = Just (left, right + n)
  | otherwise                = Nothing

main :: IO ()
main = do
  print $ landLeft 1 (1, 1) >>= landLeft 1 >>= landRight 1 >>= landRight 1
  print $ landRight 1 (1, 1) >>= landLeft 1 >>= landRight 2 >>= landRight 2
