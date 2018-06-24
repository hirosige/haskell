import Data.Char

upcaseFirst :: String -> String
upcaseFirst (c:cs) = toUpper c

camelCase :: String -> String
camelCase xs = concat (map upcaseFirst (words xs))
