import Data.Monoid

main :: IO ()
main = do
  print $ getFirst $ First (Just 'a') `mappend` First (Just 'b')
