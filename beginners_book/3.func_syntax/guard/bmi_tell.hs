bmiTell :: Double -> String
bmiTell bmi
  | bmi <= 18.5 = "You're underweight, you emo, you!"
  | bmi <= 25.0 = "You're supposedly normal. Pffft I bet you're ugly!"
  | bmi <= 30.0 = "You're fat! Lose some weight, fatty!"
  | otherwise = "You're a whale, congratulations!"

main :: IO ()
main = do
  let number = 10.0::Double
  let number2 = 20.0::Double
  let number3 = 30.0::Double
  let number4 = 40.0::Double
  let number5 = 50.0::Double
  print $ bmiTell number
  print $ bmiTell number2
  print $ bmiTell number3
  print $ bmiTell number4
  print $ bmiTell number5
