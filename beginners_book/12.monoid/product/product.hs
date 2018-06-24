import Data.Monoid

main :: IO ()
main = do
  print $ getProduct $ Product 3 `mappend` Product 9
  print $ getSum $ Sum 2 `mappend` Sum 3
  print $ getAny $ Any True `mappend` Any True
  print $ getAll . mconcat . map All $ [True, True, True]
