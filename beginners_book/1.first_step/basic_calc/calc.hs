main :: IO ()
main = do
  let num1 = 49::Integer
  let num2 = 100::Integer
  let result =  num1 * num2
  print result

  let num3 = 1892::Integer
  let num4 = 1472::Integer
  let result2 =  num3 - num4
  print result2

  let num5 = 6::Double
  let num6 = 2::Double
  let result3 = num5 / num6
  print result3

  let num7 = 50::Integer
  let num8 = 100::Integer
  let num9 = 4999::Integer
  let result4 = (num7 * num8) - num9
  print result4

  let num10 = 50::Integer
  let num11 = 100::Integer
  let num12 = 4999::Integer
  let result5 = num10 * num11 - num12
  print result5

  let num13 = 50::Integer
  let num14 = 100::Integer
  let num15 = 4999::Integer
  let result6 = num13 * (num14 - num15)
  print result6
