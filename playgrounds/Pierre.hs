import Control.Monad()

type Bird = Int
type Pole = (Bird, Bird)

landLeft :: Bird -> Pole -> Maybe Pole
landLeft n (left, right)
  | abs ((left + n) - right ) < 4 = return (left + n, right)
  | otherwise                     = Nothing

landRight :: Bird -> Pole -> Maybe Pole
landRight n (left, right)
  | abs (left - (right + n)) < 4 = return (left, right + n)
  | otherwise                    = Nothing

main :: IO ()
main = do
  print $ return (1,1) >>= landLeft 1 >>= landLeft 1 >>= landLeft 1
