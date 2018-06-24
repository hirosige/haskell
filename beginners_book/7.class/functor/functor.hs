-- class Functor f where
--   fmap :: (a -> b) -> f a -> f b

main :: IO ()
main = do
  print $ fmap (*2) [1..3]
