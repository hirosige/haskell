niceGreeting :: String
niceGreeting = "test"

badGreeting :: String
badGreeting = "test2"

greet :: String -> String
greet "Juan" = niceGreeting ++ "Juan!"
greet "Fernando" = niceGreeting ++ "Fernando!"
greet name = badGreeting ++ " " ++ name

main :: IO ()
main = do
  print $ greet "Juan"
  print $ greet "Fernando"
