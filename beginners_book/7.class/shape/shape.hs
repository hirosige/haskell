data Shape = Circle Float Float Float | Rectangle Float Float Float Float
  deriving (Show)

area :: Shape -> Float
area (Circle _ _ r) = pi * r ^ 2
area (Rectangle x1 y1 x2 y2) = (abs $ x2 - x1) * (abs $ y2 -y1)

main :: IO ()
main = do
  let value1 = 10.0::Float
  let value2 = 20.0::Float
  let value3 = 30.0::Float
  let value4 = 40.0::Float

  print $ area $ Circle value1 value2 value3
  print $ area $ Rectangle value1 value2 value3 value4
  print $ Circle 10 20 5
  print $ map (Circle 10 20) [4,5,6,6]
