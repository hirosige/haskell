main :: IO ()
main = do
  let num1 = 5::Integer
  let num2 = 5::Integer
  print (num1 == num2)

  let num3 = 1::Integer
  let num4 = 0::Integer
  print (num3 == num4)

  let num5 = 5::Integer
  let num6 = 5::Integer
  print (num5 /= num6)

  let num7 = 1::Integer
  let num8 = 0::Integer
  print (num7 /= num8)

  let num9 = "hello"::String
  let num10 = "hello"::String
  print (num9 == num10)
