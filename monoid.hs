import Data.Monoid

main :: IO ()
main = do
  print $ (Just 2) `mappend` (Just 4)
