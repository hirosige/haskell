import qualified Data.Char as Char

main :: IO ()
main = do
  print $ Char.ord 'a'
  print $ Char.chr 97
  print $ map Char.ord "abcdefgh"
