main :: IO ()
main = do
  let num1 = 9::Integer
  let num2 = 5::Integer
  let num3 = 4::Integer
  let num4 = 1::Integer

  print (succ num1 + max num2 num3 + num4)
