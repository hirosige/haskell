import Control.Monad()

type Birds = Int
type Pole = (Birds, Birds)

landLeft :: Birds -> Pole -> Maybe Pole
landLeft n (left, right)
  | abs ((left + n) - right) < 4 = Just (left + n, right)
  | otherwise                   = Nothing

landRight :: Birds -> Pole -> Maybe Pole
landRight n (left, right)
  | abs (left - (right + n)) < 4 = Just (left, right + n)
  | otherwise                   = Nothing

banana :: Pole -> Maybe Pole
banana _ = Nothing

x -: f = f x

main :: IO ()
main = do
  print $ landLeft 2 (0, 0)
  print $ landRight 1 (1, 2)
  print $ landRight (-1) (1, 2)
  print $ (0, 0) -: landLeft 2
  print $ (0, 0) -: landLeft 10
  print $ landRight 1 (0, 0) >>= landLeft 2
  print $ return (0, 0) >>= landLeft 1 >>= landRight 4 >>= landLeft (-1) >>= landRight (-2)
  print $ return (0, 0) >>= landLeft 1 >>= landRight 1 >>= banana
