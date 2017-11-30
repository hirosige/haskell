initials :: String -> String -> String
initials firstname lastname = [f] ++ ". " ++ [l] ++ "."
  where (f:_) = firstname
        (l:_) = lastname

main :: IO ()
main = do
  print $ initials "Hiroshige" "Negishi"
  print $ initials "Hiroshige" "Negishi"
