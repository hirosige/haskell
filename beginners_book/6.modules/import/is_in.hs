import qualified Data.List as List

isIn :: (Eq a) => [a] -> [a] -> Bool
needle `isIn` haystack = any (needle `List.isPrefixOf`) (List.tails haystack)

main :: IO ()
main = do
  print $ "art" `isIn` "party"
