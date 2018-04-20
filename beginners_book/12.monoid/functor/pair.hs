import Control.Applicative
import Data.Char

newtype Pair b a = Pair { getPair :: (a, b) }

instance Functor (Pair c) where
  fmap f (Pair (x, y)) = Pair (f x, y)

main :: IO ()
main = do
  print $ getPair $ fmap (*100) (Pair (2, 3))
  print $ getPair $ fmap reverse (Pair ("london calling", 3))
