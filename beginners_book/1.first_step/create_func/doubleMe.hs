doubleMe :: Int -> Int
doubleMe x = x + x

main :: IO ()
main = do
  print (doubleMe 7)
  print (doubleMe 8)
