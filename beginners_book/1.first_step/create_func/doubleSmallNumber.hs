doubleSmallNumber :: Int -> Int
doubleSmallNumber x =
  if x > 100
    then x
    else x * 2

main :: IO ()
main = do
  print $ doubleSmallNumber 200
  print $ doubleSmallNumber 100
  print $ doubleSmallNumber 99
  print $ doubleSmallNumber 0
