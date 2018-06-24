data TrafficLight = Red | Yellow | Green

instance Eq TrafficLight where
  Red    == Red    = True
  Green  == Green  = True
  Yellow == Yellow = True
  _      == _      = False

instance Show TrafficLight where
  show Red    = "Red light"
  show Yellow = "Yellow light"
  show Green  = "Green light"

main :: IO ()
main = do
  print $ Red == Red
  print $ Red == Yellow
  print $ Red `elem` [Red, Yellow, Green]
  print $ [Red, Yellow, Green]
  print $ Red
