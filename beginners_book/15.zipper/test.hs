
data Bug = Bug {
  name :: String
, color :: String
} deriving (Show, Read)

main :: IO ()
main = do
  print $ Bug "hel" "red"
