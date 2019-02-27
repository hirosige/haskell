sayHello :: String -> String
sayHello name = name ++ ", hello"

main :: IO ()
main = do
  print $ sayHello "hiro"
