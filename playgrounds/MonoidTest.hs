import Data.Monoid

doubleMonoid :: (Monoid a) => a -> Maybe a
doubleMonoid n = return $ n `mappend` n

lenMonoid :: (Monoid a) => a -> Maybe Int
lenMonoid n = Just 1

main :: IO ()
main = do
  print $ doubleMonoid (Sum 3) >>= doubleMonoid >>= doubleMonoid >>= doubleMonoid >>= lenMonoid
  print $ doubleMonoid (Product 3) >>= doubleMonoid >>= doubleMonoid >>= doubleMonoid
  print $ doubleMonoid "test" >>= doubleMonoid >>= doubleMonoid >>= doubleMonoid
  print $ doubleMonoid [1,2,3] >>= doubleMonoid >>= doubleMonoid >>= doubleMonoid
  print $ doubleMonoid ["a","b","c"] >>= doubleMonoid >>= doubleMonoid >>= doubleMonoid
  print $ doubleMonoid ['a'..'z'] >>= doubleMonoid >>= doubleMonoid >>= doubleMonoid
