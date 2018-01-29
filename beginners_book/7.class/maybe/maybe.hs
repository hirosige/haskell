data Maybe a = Nothing | Just a

main :: IO ()
main =
  print $ Prelude.Just 3
